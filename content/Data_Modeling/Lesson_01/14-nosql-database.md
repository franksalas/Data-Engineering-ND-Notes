# Section: Data_Modeling
# Lesson: 01
# 14 Nosql Database
## 2021-04-09
---

# What is a NoSQL Database
- has simple design, simpler horisontal scaling, and finer control of availability
- Data structures used are diffrent thatn those in relationsa databases & make some operations faster
- NoSQL = Not Only SQL, NoSQL & NonRelational are interchangeable terms
- various types of NoSQL databases

## Common types of NoSQL DAtabases
- Apache CAssandra (partition Row store)
- MongoDB (document store)
- DynamoDB (key-value store)
- Apache HBase (Wide Column Store)
- Neo4J (Graph database)

We will focus on Apache Cassandra to explain concepts of data modeling for NoSQL DAtabase


## The Basics of Apache CAssandra

- Keyspace  ( a database/schema)
  - collection of tables
- Table
  - a group of partitions
- Rows
  - a single item

![](https://i.imgur.com/H8JWxaO.png)

- PArtition
  - Fundemental unit of access
  - Collection of row(s)
  - how data is distrubuted 
- Primary Key
  - primary Key is made up of a partition key and clustering columns
- Columns
  - clusering data
  - labeled element


![](https://i.imgur.com/qNo543G.png)
