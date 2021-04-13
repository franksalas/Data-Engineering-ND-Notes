# Section: Data_Modeling
# Lesson: 02
# 14 Denormalization Vs Normalization
## 2021-04-12
---

# Denormalization vs Normalization

## Normalization
- trying to increase data integrity by reducing the number of copies of the data
- Data that needs to be added or update will be done in as few places as possible

## Normalization Example
![](https://i.imgur.com/ik2Pt1w.png)
- no row contains list of items
  - its been replace by habing it sonw row in the song table
- Transitive dependencies habe been removed

## Denormalization 
- increase `READ` performace by reducing the nubmer of joints between tables
- Data integrity will take a bit of potential hit, as there will be more copies of the data (to reduce JOINS)

## Denormalized Example

![](https://video.udacity-data.com/topher/2019/March/5c788517_table1/table1.png)
- contains  a column with the artis name that includes duplicate rows, and another col with list of songs

