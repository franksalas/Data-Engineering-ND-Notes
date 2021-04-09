# Section: Data_Modeling
# Lesson: 01
# 15 What Is Apache Cassandra
## 2021-04-09
---

# What is Apache Cassandra
- provides scalability and high availability without compromising performance.
- Linear Scalability and proven **fault-tolerant** on commodity hardware or cloud intrastruture make it the perfect platform for mission-critical data
- uses its own query language CQL

## What typs of compaies use Apache Cassandra
Uses
- transaction logging (retail , health care)
- internet of things
- time series data
- any workload that is heavy on writes to the database (since apache cassandra is optimized for writes)


## Woud Acpache Cassandra be a hindrance for my analytis work? if yes, Why?
- Yes if you ar tryin to do analysis, such as using `GROUP BY` statement
- Apache Cassandra requres data modeling based on the query you want, you cant do **ad-hock**  queries., but you can add clustering col into your data  model and crate new tables.

