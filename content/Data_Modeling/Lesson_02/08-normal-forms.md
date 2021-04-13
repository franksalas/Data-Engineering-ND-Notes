# Section: Data_Modeling
# Lesson: 02
# 08 Normal Forms
## 2021-04-12
---

# Normal Forms

The process of normalization is a step by step process
- First Normal Form `1NF`
- Second Normal Form `2NF`
- Third Normal Form `3NF`
- 

## How to reach First Normal Form `1NF`


![](https://i.imgur.com/9SY1Ej4.png)

- Atomic values: each cell contains unique and single values
  - No sets, list or collection of values
- be able to add data without altering tables
  - add/remove columns
- Separate diffrent relations into diffrent tables
  - logical grouping
- keep relationships between tables together with foreigh keys
  - they are separated by linking them together w/ forein key
  - in example `name`  is used as foreng key


## SEcond Normal form `2NF`

![](https://i.imgur.com/rcMkRbJ.png)

- have reached `1NF`
- all columns in the table must rely on the Primary Key
  - no composite keys to get field


## Third Normal Form `3NF`
![](https://i.imgur.com/Sa5RnT0.png)

  
- must be in `2NF`
- no transitive dependencies
- Remember, transitive dependencies you are tryin to maintain is that to get from `A -> C`, you want to avoind gounth throug `B`
- split to `award_table` and `lead_singer` table
    

## When to use `3NF`
- When you wnat to update data, we want to be able to do in just 1 place. 
- We want to avoid updating the table in the Customer Detail Table