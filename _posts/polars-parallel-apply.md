

```py
def parallel_apply(func, iterable, chunksize=10, processes=8):
    python_iterable = list(iterable.to_numpy())

    with multiprocessing.get_context("spawn").Pool(processes=processes) as pool:
        result = pool.imap(func, track(python_iterable), chunksize)
        return pl.Series(result)
```

> https://stackoverflow.com/questions/77325464/how-can-i-improve-the-runtime-of-row-wise-operations-in-polars
