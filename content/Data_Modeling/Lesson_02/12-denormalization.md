# Section: Data_Modeling
# Lesson: 02
# 12 Denormalization
## 2021-04-12
---

# Denormalization: All about performance!!
T- he process of trying to improve the read performacne of a database at theexpense of losing some write performance by adding redunant copues of data.
- comes after normalization
- duplicate data is ok 
![](https://i.imgur.com/ygxCZkr.png)

## Logical Design change
1. the designer is in chanrege of keeping data consistent
2. reades will be faster (`SELECT...`)
3. Writes will be slower (`INSERT.., UPDATE...DELETE`)

- JOINS on the database allowe for outstanding flex but are slow
- if you are dealing with deavy reads on database, think about denormalizing tables
- 