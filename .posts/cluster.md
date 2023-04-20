### AWS EC2 Instance

[Spot Instance Advisor](https://aws.amazon.com/ec2/spot/instance-advisor/)

[Instances Vantage](https://instances.vantage.sh/)

[EC2 Instances](https://www.ec2instances.info/)

Check file system disk size

```
df -h
```

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

Scrolling up and down in tmux

1. Press CTRL + B
2. Press Page Up or Page Down to navigate

Update submodule

```
git submodule update –remote
```

Move commits to new branch

## Note: Any changes not committed will be lost.

1. `git branch newbranch` # Create a new branch, saving the desired commits
2. `git checkout master` # checkout master, this is the place you want to go back
3. `git reset --hard HEAD~3` # Move master back by 3 commits (Make sure you know how many commits you need to go back)
4. `git checkout newbranch` # Go to the new branch that still has the desired commits
