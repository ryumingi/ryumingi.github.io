---
layout: post
title: "Comparison of Dataframe libaries and others"
categories: Dev
---


## Pandas
Pros
- It can be used to load a whole bunch of different file types. You shouldn't expect them to work reliably and you'll need to refer to the documentation and the source code to figure out the exact set of parameters that makes it work correctly.
- The interface is pretty flexible, which also makes it inconsistent. Anyway, you can almost guess the methods and a quick search will get you moving.

Cons
- Data type support still sucks even if you use `df.convert_dtypes()`. Actually, it can make things worse because `pd.NA` is a pain to deal with in Pythonic way. You have to use `pd.isna()` or `pd.notna()` all the time and your output could still end up with a bunch of `<NA>` strings.
- It's very slow compared to all other libraries. Use of Modin helps quite a bit, but it's still a bit clunky.

## Polars
Pros
- Very fast. For some tasks, it's faster than Dask or Pyspark.

Cons
- Lack of native partitioned parquet support. There are ways to use Pyarrow to enable this, but it's not always the most performant option.
- It has a difficulty dealing with large datasets. The lazyframe can help with it, but it lacks partitioned parquet support.

## Dask
Pros
- The interfance is similar to Pandas, so one can easily interpolate between Dask and Pandas.
- Parallelization with less overhead compared to Pyspark.

Cons
- Some random task can lock the entire process making Dask very inefficient. This isn't always easy to identify and solve.
- Integration with ML software is a bit lacking. There are better tools to use for GPU-based workloads.

Issues
- Automatic conversion to string. Disable using `dask.config.set({"dataframe.convert-string": False})`

## Pyspark
Pros
- Can handle TBs of data as long as sufficient hardware is provided.
- Good partitioned parquet support.

Cons
- Hard to debug. A lot of things are hidden behind the JVM and the verbose nature of the library makes it difficult to quickly identify the issue.
- Slow to setup and start. The overhead of working with Pyspark is high. I'd never use Pyspark to load a 1GB of CSV file if I have a choice.
- Dealing with schema is annoying at times. Especially when there's many columns or nested columns.

## Ray
Pros
- Works well GPU-based workloads

Cons
- No dataframe support.
- Most tasks are substantially slower than using other tools.

## Modin
Pros
- Basically Pandas.

Cons
- Some issues with heavier dataframe operations such as aggregation, shuffling, etc.
- Have most of the issues that Pandas have.
