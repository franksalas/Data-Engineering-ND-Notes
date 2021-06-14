# Section: Dlws
# Lesson: 05
# 04 Unstructed Data And Big Data
## 2021-06-04
---
## Abundance of Unstructed Data
## Can we have unstructured data in the data warehouse?
- possible in the ETL process
  - maybe distill some elemnets form `json` data and put it in tabular format but will run erros down the line if want to change

- some data is hard to put in tabular format like **deep json structures**
- some data like text/pdf document could be stored as **blobs** of data in a relational datagase but totally **usless unless process to extract metrics**

## The Rise of Bid Dagta TEchnologies
- Haddop file sytem **HDFS** made it possible to store petabites of data ion commodity hardware. Much lower cost per TB compared to mPP databases
- Associated processing toll sstarting from
  - MapReduce
  - Pig
  - Hive
  - Impala
  - Spark
- made it possible to **process this data at scale on teh same hardware used for storage**
- It is possible tom ake data analysit without insertint into a predefine schema. One cal load a CSV file and make a query without creatign a table, insertin gthe data in the table. Similary one can process unstructed text. This aporach is known as **Schema-On-Read**
- 