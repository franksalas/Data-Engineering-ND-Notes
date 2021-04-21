# Section: Data_Modeling
# Lesson: 02
# 24 Data Definition And Constraints
## 2021-04-12
---

# Data Definition and Constraints
The `CREATE` statement in SQL has a few improtant constraints

## `NOT NULL`
- The `NOT NULL` constraint indicates that the col cannotn contain a null value

```sql
CREATE TABLE IF NOT EXISTS customer_transactions (
    customer_id int NOT NULL, 
    store_id int, 
    spent numeric
);
```

- you can add `NOT NULL` constraint to more thatn on e col
- Usually this occurs when you have a `COMPOSITE KEY` which will be discussed further below

```sql
CREATE TABLE IF NOT EXISTS customer_transactions (
    customer_id int NOT NULL, 
    store_id int NOT NULL, 
    spent numeric
);
```

## `UNIQUE`
- The `UNIQUE` constraint is used to specify that the data across all the rows in one col are uniqueu withing the table
- The `UNIQUE` constraint can also be used fo rnmultiple cols, so that  the combination of the values across those cols will be unique withing thetable
- in this case the value within 1 col do not need to be unique

```sql
CREATE TABLE IF NOT EXISTS customer_transactions (
    customer_id int NOT NULL UNIQUE, 
    store_id int NOT NULL UNIQUE, 
    spent numeric 
);
```

- Another way to write a `UNIQUE` constraint is to add a table constritn susing commas to separate the cols

```sql
CREATE TABLE IF NOT EXISTS customer_transactions (
    customer_id int NOT NULL, 
    store_id int NOT NULL, 
    spent numeric,
    UNIQUE (customer_id, store_id, spent)
);
```

## ` **PRIMARY KEY**`
- The ` **PRIMARY KEY**` constrain is defined on a single col, and every table should contain a prinmary key.
- the value in this col uniqely identify the rows in the table
- if a group of col are define as a  **PRIMARY KEY**m theya are called a `COMPOSITE KEY`, that means the combination of values in these cols will unqiuely idenityf the rows in the table
- By default the ` **PRIMARY KEY**` constraint has the uniqeu and not null constraint build into it
```sql
CREATE TABLE IF NOT EXISTS store (
    store_id int  **PRIMARY KEY**, 
    store_location_city text,
    store_location_state text
);
```
- here is an example for a group of cols serving as `COMPOSITE KEY`

```sql
CREATE TABLE IF NOT EXISTS customer_transactions (
    customer_id int, 
    store_id int, 
    spent numeric,
     **PRIMARY KEY** (customer_id, store_id)
);
```

https://www.postgresql.org/docs/9.4/ddl-constraints.html
