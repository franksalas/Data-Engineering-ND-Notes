# Section: Data_Modeling
# Lesson: 04
# 11  **PRIMARY KEY**
## 2021-04-21
---

##  **PRIMARY KEY**
- The  **PRIMARY KEY** is houe each row can be uniquely identified and how the data is didtrubuted across the nodes (or servers) in our system
- The first elemnt of the  **PRIMARY KEY** is the  **PARTITION KEY** ( which will determine the distribution)
- The  **PRIMARY KEY** is made up of either just the  **PARTITION KEY** or with the addition of clusteing columns

##  **PARTITION KEY**
- The  **PRIMARY KEY** is made up of either the  **PARTITION KEY** or with the addition of clustering columns. the  **PARTITION KEY** will determine the distrubiton of data across the sytem
- the partitio key's row value will be hased (turned into an ubmer) and stored on the node in the sytem that hodls that range of values


![](https://i.imgur.com/RsOCnfn.png)


## PRimary key: key points
- must be unique
- hasing of this value results in plaement on a particular  node in the system
- Data distrubuted by this partition
- simple or composite
- may have one or more clustering column


![](https://i.imgur.com/GBi7qiF.png)

- must be unique
- the ** **PRIMARY KEY****  is made upd of either just the  ** **PARTITION KEY**** OR MAY ALSO INCLUDE ADDITIONAL **CLUSTERING COLUMNS**
- A SIMPLE  **PRIMARY KEY** is just one column that is alos the ** **PARTITION KEY****. a Compsite ** **PRIMARY KEY**** is made upd of more thatn one column and will assist in creating a unique value and in you retrival queries
- The ** **PARTITION KEY****  will determine the distrubutioh of data across the system

