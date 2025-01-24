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
