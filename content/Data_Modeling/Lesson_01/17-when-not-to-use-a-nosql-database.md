# Section: Data_Modeling
# Lesson: 01
# 17 When Not To Use A Nosql Database
## 2021-04-09
---

# When Not to Use a NoSQL Database

- Need ACID Transactions
- Need ability to do JOINS (full table scan.. not good)
- ability to do aggregations and analytics
- Have changing business requirments
- Have a small dataset


## Remember
- NoSQL databases and RElational dataases do **not replace** each othe rfor all task
- both do diffrent task extremley well, and shoudl be utilied for the use cases they fit best.

## Caves to NoSQL and ACID Transactions
- MondoDB v4.0  added multi-documetn ACID transaction with in a single replica set
- v4.2 added multi-document  ACID transaction in a shared/partiton deployment