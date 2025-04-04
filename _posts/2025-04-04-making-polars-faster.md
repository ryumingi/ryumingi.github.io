---
layout: post
title: "Making Polars Faster"
categories: Dev
---

Row-wise operation in Polars is procedural just like Pandas. Modin, Dask, etc can be used to speed up the runtime depending on the numeber of cores available in the compute.

The following wrapper basically uses the the `multiprocessing` library to parallize the workload. It's a simple trick that also works with Pandas. However, it may not work for all cases and there's no lazy planning & execution.

```py
def parallel_apply(func, iterable, chunksize=10, processes=8):
    python_iterable = list(iterable.to_numpy())

    with multiprocessing.get_context("spawn").Pool(processes=processes) as pool:
        result = pool.imap(func, track(python_iterable), chunksize)
        return pl.Series(result)
```

> https://stackoverflow.com/questions/77325464/how-can-i-improve-the-runtime-of-row-wise-operations-in-polars


Writing the Polars DataFrame into partition parquets have been tricky since the beginning. As a result, the following helper functions have been used as a workaround in order to support downstream tasks that require partitioned parquet files. 

There are different ways to partition the parquet with Polars using any one of these parameters: `pyarrow_options`, `partition_by`, `partition_chunk_size_bytes` in [polars.DataFrame.write_parquet](https://docs.pola.rs/api/python/dev/reference/api/polars.DataFrame.write_parquet.html). However, each of the implementation is quite different than the traditional partition conception of repartitioning the dataset to N parts and each worker/core writing it to disk. Note that the memory usage is not optimized and quite unpredictable.

```py
def write_partitioned_parquet(
    df, output_dir: str, num_partitions: int = 100, overwrite=False
):
    if overwrite:
        shutil.rmtree(output_dir, ignore_errors=True)

    os.makedirs(output_dir, exist_ok=False)

    num_rows = len(df)
    rows_per_partition = num_rows // num_partitions

    logger.info(f"Using {num_rows=}, {rows_per_partition=}")
    for i in tqdm(range(num_partitions)):
        output_file = os.path.join(output_dir, f"part-{i + 1}.parquet")

        start_idx = i * rows_per_partition

        if i == num_partitions - 1:
            end_idx = num_rows
        else:
            end_idx = (i + 1) * rows_per_partition

        partition_df = df[start_idx:end_idx]
        partition_df.write_parquet(output_file)


def sink_partitioned_parquet(
    df, output_dir: str, num_partitions: int = 100, overwrite=False
):
    if overwrite:
        shutil.rmtree(output_dir, ignore_errors=True)

    os.makedirs(output_dir, exist_ok=False)

    sink_path = f"{output_dir}.sink"

    logger.info(f"Sink to {sink_path}")
    df.sink_parquet(sink_path)

    logger.info(f"Scan {sink_path}")
    df = pl.scan_parquet(sink_path)

    num_rows = df.select(pl.count()).collect().item()
    rows_per_partition = num_rows // num_partitions

    logger.info(f"Using {num_rows=}, {rows_per_partition=}")
    for i in tqdm(range(num_partitions)):
        output_file = os.path.join(output_dir, f"part-{i + 1}.parquet")

        start_idx = i * rows_per_partition

        if i == num_partitions - 1:
            end_idx = num_rows
        else:
            end_idx = (i + 1) * rows_per_partition

        partition_df = df[start_idx:end_idx]
        partition_df.sink_parquet(output_file)

    os.remove(sink_path)
```
