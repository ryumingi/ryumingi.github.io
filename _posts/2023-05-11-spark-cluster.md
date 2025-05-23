---
layout: post
title: "AWS EC2 & Spark Cluster Snippets"
categories: Dev
---

### AWS EC2 Instance

[Spot Instance Advisor](https://aws.amazon.com/ec2/spot/instance-advisor/)

[Instances Vantage](https://instances.vantage.sh/)

[EC2 Instances](https://www.ec2instances.info/)

### Spark / Hadoop
[Hadoop Troubleshooting S3](https://github.com/steveloughran/hadoop/blob/trunk/hadoop-tools/hadoop-aws/src/site/markdown/tools/hadoop-aws/troubleshooting_s3a.md
)

[Spark Configuration](https://spark.apache.org/docs/latest/configuration.html#spark-configuration)

### Snippets

Partial download of parquet directory

```
aws s3 sync {source} {destination} --exclude="*" --include="part-0000*"
```

Save job logs as output file

```
spark-submit job.py 2>&1 | tee logs 
```

Fix ouf of memory error when working locally

```
pyspark --driver-memory 10g --master local[1]
```

Using a single thread

```
pyspark --master local
```

Using all threads (master as worker)

```
pyspark --master local[*]
```

Change temp/shuffle/work dir to a different (external) disk

```
pyspark --conf spark.local.dir=/data
```

Load Hadoop Cloud

```
pyspark --packages org.apache.spark:spark-hadoop-cloud_2.12:3.5.4
```

Use Ipython for Pyspark shell

```
PYSPARK_DRIVER_PYTHON=ipython pyspark
```

### Misc

Check file system disk size
```
df -h
```

Scrolling up and down in tmux
1. Press CTRL + B
2. Press Page Up or Page Down to navigate

Update submodule
```
git submodule update –remote
```
