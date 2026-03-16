---
layout: post
title: "The most common title on OpenAlex: `Occurrence Download`"
categories: dev
---


```
In []: df.filter(df.title == "Occurrence Download").count()
Out[]: 4086738
```

A large collection of works titled "Occurrence Download" with "GBIF.Org User" as the author has been included in the OpenAlex `works` dataset.

[Link to OpenAlex for `Occurrence Download`](https://openalex.org/works?search.title_and_abstract=occurrence+download&sort=relevance_score:desc
)


As a context, here's top 30 most common titles on OpenAlex.

```
In []: df.groupby(df.title).count().orderBy("count", ascending=False).head(30)
Out[]:
[Row(title='', count=6143419),
 Row(title='Occurrence Download', count=4086738),
 Row(title=None, count=1807859),
 Row(title='archive.org Member', count=816219),
 Row(title='Introduction', count=471973),
 Row(title='Editorial Board', count=346797),
 Row(title='Streptomyces sp.', count=299585),
 Row(title='Index', count=271602),
 Row(title='Editorial', count=259510),
 Row(title='Animalia', count=257135),
 Row(title='Front Matter', count=245362),
 Row(title='Frontmatter', count=204817),
 Row(title='Preface', count=201099),
 Row(title='Table of Contents', count=200554),
 Row(title='Contents', count=190204),
 Row(title='Lepidoptera Linnaeus, 1758', count=184780),
 Row(title='NBC News Scripts', count=127397),
 Row(title='Book Reviews', count=119856),
 Row(title='Conclusion', count=115246),
 Row(title='Bibliography', count=105941),
 Row(title='Notes', count=105511),
 Row(title='Masthead', count=98460),
 Row(title='Issue Information', count=98285),
 Row(title='Back Matter', count=89172),
 Row(title='Acknowledgments', count=86912),
 Row(title='The APPLAUSE Data Release 2', count=85231),
 Row(title='Erratum', count=76345),
 Row(title='Contributors', count=73847),
 Row(title='Foreword', count=73563),
 Row(title='References', count=66750)]
```
