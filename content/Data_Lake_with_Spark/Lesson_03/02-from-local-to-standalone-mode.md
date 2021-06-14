# Section: Dlws
# Lesson: 03
# 02 From Local To Standalone Mode
## 2021-05-27
---

# Spark cluster managers
- mesos & Yarn are for sharing a spark cluster across an entire team of engineers and analyst.
![](https://i.imgur.com/Mow9aLf.png)

## Our setup
1. Amazon S3 will store the dataset.
2. We rent a cluster of machines, i.e., our Spark Cluster, and iti s located in AWS data centers. We rent these using AWS service called Elastic Compute Cloud (EC2).
3. We log in from your local computer to this Spark cluster.
4. Upon running our Spark code, the cluster will load the dataset from Amazon S3 into the cluster’s memory distributed across each machine in the cluster


![](https://i.imgur.com/SL0LprN.png)
