# Section: Cdw
# Lesson: 03
# 13 Redshift Etl Continued
## 2021-05-05
---

# Redshift ETL Automatic Compression Optimization
- the optimal compression stragegy for each column type is different
- redshift gies the user control over the compression of each column
- The `copy` command makes automatic bets-effort compression decision for each column

## ETL form Other sources
- its also possible to **ingest directly** using ssh from EC2 machine
- other than that
  - S3 needs to be used as a **staging area**
  - Usually , an EC2 ETK worker needs to run teh ingestino jobs **orchestrated by a data flow product** like
    - Airflow
    - Luigi
    - Nifi
    - StreamSet
    - AWS Data Pipeline

## ETL Out of REdshift
- Resshift is accesible , like any relational database as JDBC/OCDB source
  - naturally 3uses by BI apps
- However, we may need to extract data out of Redshift to pre-aggregated OLAP cubes

![](https://i.imgur.com/OUIwTKm.png)
