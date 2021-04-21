# Section: Data_Modeling
# Lesson: 04
# 20 Where Clause
## 2021-04-21
---










# WHERE clause
- Data modeling in Apache Cassandra is query focused, and that focus needs to be on the `WHERE` clasue
- The partition key must be included in your query and  clustering columns can be used in the ordert they appear in you primary key

- Failure to incude a WHERE clasue will result in an error

![](https://i.imgur.com/47ZS5bJ.png)
![](https://i.imgur.com/keJIKUu.png)

# `SELECT * FROM table`
The `WHERE` clause must be in clude dto execute queries. It is recommended that one partition be queried at a time for performance implications. It is possible to do a `SELECT * FROM table` if you add a configuration `ALLOW FILTERING` to your query.  This is risky, but availible if absolutely necessary.