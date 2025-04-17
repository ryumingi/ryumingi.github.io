

Most of the AWS EC2 instance have a single thread per vCPU. This means that any multi-threading operations can't be used to optimize the performance.

[elasticsearch.helpers.parallel_bulk](https://elasticsearch-py.readthedocs.io/en/v9.0.0/helpers.html#elasticsearch.helpers.parallel_bulk) 
uses `ThreadPool` to speed up ElasticSearch bulk ingest. Since this parallelization can't be applied multiple vCPUs on AWS EC2 instances, 
the `thread_count` parameter is non-functional.

At best, one can selectively use instances with 2 threads per vCPUs.
[Supported CPU options for Amazon EC2 instance types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/cpu-options-supported-instances-values.html)

Better, many tasks can be parallelized by using `multiprocessing.Pool`. TDB
