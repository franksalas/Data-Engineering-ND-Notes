# Section: Cdw
# Lesson: 03
# 08 Sql To Sql Etl
## 2021-05-05
---

# SQL to SQl ETl

## our base
![](https://i.imgur.com/177LPxh.png)


## Same Database Server
- To copy the results of a query to anotehr table (e.g facts or dimiension table **in the same database** we can easly use `SELECT INTO`

```sql
SELECT
    fact1, fact2
INTO
    newFactTable
FROM
    table X,Y
WHERE
    X.id = Y.fid x.v <> null
GROUP BY
    Y.d
```

## In a Different Database Server

```sql
SELECT
    fact1, fact2
INTO
    OtherServer.newFactTable
FROM
    table X,Y
WHERE
    X.id = Y.fid x.v <> null
GROUP BY
    Y.d
```

![](https://i.imgur.com/RcDQUNl.png)


## A more General solution
- etl server stored as csvs
- lots of storage
- can automate
![](https://i.imgur.com/5ZlUJaA.jpg)
