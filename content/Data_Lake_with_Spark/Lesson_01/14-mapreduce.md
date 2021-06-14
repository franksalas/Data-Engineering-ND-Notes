# Section: Dlws
# Lesson: 01
# 14 Mapreduce
## 2021-05-11
---

# MapReduce
MapReduce is a programming technique for manipulating large data sets. "Hadoop MapReduce" is a specific implementation of this programming technique.

The technique works by first dividing up a large dataset and distributing the data across a cluster. In the map step, each data is analyzed and converted into a (key, value) pair. Then these key-value pairs are shuffled across the cluster so that all keys are on the same machine. In the reduce step, the values with the same keys are combined together.

While Spark doesn't implement MapReduce, you can write Spark programs that behave in a similar way to the map-reduce paradigm. In the next section, you will run through a code example.


## HDFS
- group data into chunks (partitions)
![](https://i.imgur.com/oYV8xns.png)

## Map
- disk tranfsorms each reacord in that give partition, then rises modify record to an intermediate file
  - read each line of the file
  - create tuple with the name and a number
![](https://i.imgur.com/9Goi6fj.png)
- have multiple intermediate files containg pairs of song title and teh number one
- key value paris/ tuples
![](https://i.imgur.com/KbOCHqG.jpg)

## Shuffle
- all the records from these intermediate files are hsiffled across the cluster
- pairs w/ same song and the key of the key value pair end up on the same machine
- this way when the node aggregates the valued for key, it can be sure that it has all the corresponding data for a song and can compute the correct final result
![](https://i.imgur.com/zom95fq.jpg)

## Reduce
-  the values for a given key can be combined
-  here, we just need to sum all the ones for a given key
![](https://i.imgur.com/NpRev3L.jpg)
