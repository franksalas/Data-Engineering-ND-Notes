# Section: Cdw
# Lesson: 03
# 06 Amazon Redshift Architecture
## 2021-05-05
---

# Redshift Architecture: The cluster
- redshift is a cluster
- contains 1 leader node
- 1 or more compute nodes
![](https://i.imgur.com/7BJfEEd.png)


## Leader node
- commands number of compute nodes
- optimizie queries
![](https://i.imgur.com/pDv1GpR.png)


# compute node
- has own cpu, memory disk
- each node logicaly divided into number of slices
- a slice is a cpu
  - each cpu has number of disk
- a cluster with $n$ slices, can process  $n$ partitions of a table simultaneously
![](https://i.imgur.com/rwlZiaH.jpg)
![](https://i.imgur.com/SqaBY9s.png)
