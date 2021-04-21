# Section: Data_Modeling
# Lesson: 04
# 06 Dernormalization In Apache Cassandra
## 2021-04-20
---

# Imortance of Denormaiation in Apache Cassandra

Denormalization of tables in Apache Cassandra is absolutely critical. 

The biggest take away when doing data modeling is Apache Cassandra is to thing about your **queries** first. There are no `JOINS` in Apache Cassandra.

> Think about your queries first!!

>If you are migrating some workload from  relational database to a NoSQL,
It cannot be transform as is, you are gonna have to do some new data modeling task on it to be able to  get it transform into the correct data model

## Data modeling in Apache Cassandra
- Denormalization is not just ok -- it sa mist
- Denormalization must be done for fast reads
- Apache Cassandra has been optimized for fast writes
- ALWAYS thing Querie sfirst
- One table per query is a great strategy
- Apache Cassandra does not allow for `JOINS` between tables

![](https://i.imgur.com/mEDop3a.png)

## Two Queries Two Tables
- all albums in a given year
- all albumns by a given artist

![](https://i.imgur.com/BCnp9tX.png)
- duplicate data is ok!!!
- nature of denormalized tables


