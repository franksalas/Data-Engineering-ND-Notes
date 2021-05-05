# Section: Cdw
# Lesson: 03
# 11 Ingesting At Scale
## 2021-05-05
---

# Ingesting at Scale: Ise `COPY`

- to transfer data from an S3 staging area to redshift use the `COPY` command
- inserting data row by  using `INSERT` will be very slow
- if the file is large:
  - its is beter to beak it up to **multiple files**
  - ingest in **Parallel**
    - (`how they know if they are from same place?`)
    - either using a **common prefix**
    - or a **mainifest file**
- other considerations:
  - Better to ingest form the same AWS region
  - Better to compress all the CSV filels
- one can also specify the delimeter to be used

