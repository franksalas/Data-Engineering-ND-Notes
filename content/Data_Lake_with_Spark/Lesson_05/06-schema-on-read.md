# Section: Dlws
# Lesson: 05
# 06 Schema On Read
## 2021-06-04
---

# Big Data Tech #2 Schema-on-Read
- Traditionally, data in database has been much easier to process than data in plain files
- Big Data tools in the hadoop ecosytem e.g Hive Y Spark  made it easy to work with a file as easy as it is to work with a database without
  -  creating a database
  -  inserting the data into the database

- **Schema-on-Read** as for the schema of a tble (simple file on disk):
  - it is either inferred
  - or specified and the data is not inserted into it, but upon  read the data is checked agains the specified schema


## Schema on read  -schema inference
- types are not 
![](https://i.imgur.com/tbIZtFm.png)


## Schema on REad - Control types and Malformed Data
![](https://i.imgur.com/6NNV9uV.png)



## Schema on Read in Spark:Dataframe API
![](https://i.imgur.com/cA120Bz.png)



## Schema on Read in Spark: SQL without a DB
![](https://i.imgur.com/ErmF0F4.png)


