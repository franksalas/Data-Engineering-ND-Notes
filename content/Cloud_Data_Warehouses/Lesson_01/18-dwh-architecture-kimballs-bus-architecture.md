# Section: Cdw
# Lesson: 01
# 18 Dwh Architecture Kimballs Bus Architecture
## 2021-05-02
---

# DWH Architectures
- kimballs Bus architecutre
- Independent Data Marts
- Inmon's Corporate Information Factory (CIF)
- Hybrid Bus & CIF


## Kimball's Bus Architecture
- resembles restaurant
  - back house
  - front house
![](https://i.imgur.com/6FBGQdk.png)

### Kimball's Bus Matrix
![](https://i.imgur.com/1ldaOVY.png)

# ETL: A Closer Look
## ETL
### Extracting
  - Get the data from its source
  - Possible deleting old state
### Transforming
- integrates may sources together
- possibly cleansing:
  - inconsistencies
  - duplication
  - missing vals
  - etc
- Possibly producing diagnostic metadata

### Loading
- Structuring and loading the data into the dimensional data model

