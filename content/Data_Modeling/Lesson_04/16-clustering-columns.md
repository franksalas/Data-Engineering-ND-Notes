# Section: Data_Modeling
# Lesson: 04
# 16 Clustering Columns
## 2021-04-21
---

# Clustering columms
- the primary key is mad eup od either just the partition key or with teh addition of clustering columns. The clusterin column will determine the sort order within a partition.


![](https://i.imgur.com/jlSHdfu.png)


![](https://i.imgur.com/GCIuc8F.png)


- the clustering column will sort the data in sorted ascending order (alphabedical order)
- more thatn one clustering column can be added (or none)
- From therem the clustering column will sort in order of how they were added to the primary key