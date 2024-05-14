---
layout: post
title: "Polars Pitfalls"
categories: Dev
---

#### Struct is considered null if any one of the values is null

Related ticket: https://github.com/pola-rs/polars/issues/3462

- `{1, 2}` is definitely not null.
- `{None, None}` could be considered null, but still it should not be considered null because it's not `None`.
- `{1, None}` should not be null since it has a valid nested value.

#### Working with fields in struct is annoying

Related ticket: https://github.com/pola-rs/polars/issues/3123

I wish any one of the following worked

> df.select(pl.col("struct").col("field"))

> df.select(pl.col("struct.field"))

> df.select(pl.col("struct").struct.field("field"))

But only thing that really works is the following

> df.select(pl.col("struct").map_elements(lambda x: x["field"]))

