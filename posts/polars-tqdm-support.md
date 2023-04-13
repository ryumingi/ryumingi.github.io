---
title: "Polars doesn't support TQDM"
tags: ["polars", "tqdm"]
date: 20230412
---

Consider the following code:

```py
import polars as pl

from tqdm import tqdm

data = tqdm(dict(x=x) for x in range(1000))
df = pl.DataFrame(data)
```

`Polars` will throw a `ValueError` exception stating that `tqdm` is not supported.

```sh
---------------------------------------------------------------------------
ValueError                                Traceback (most recent call last)
Cell In[1], line 6
      3 from tqdm import tqdm
      5 data = tqdm(dict(x=x) for x in range(1000))
----> 6 df = pl.DataFrame(data)
      7 df

File ~/.cache/pypoetry/virtualenvs/opencat-gtwY4ZW7-py3.10/lib/python3.10/site-packages/polars/dataframe/frame.py:401, in DataFrame.__init__(self, data, schema, schema_overrides, orient, infer_schema_length, nan_to_null)
    393     self._df = iterable_to_pydf(
    394         data,
    395         schema=schema,
   (...)
    398         infer_schema_length=infer_schema_length,
    399     )
    400 else:
--> 401     raise ValueError(
    402         f"DataFrame constructor called with unsupported type; got {type(data)}"
    403     )

ValueError: DataFrame constructor called with unsupported type; got <class 'tqdm.std.tqdm'>
```

Of course, `pandas` works just fine.
