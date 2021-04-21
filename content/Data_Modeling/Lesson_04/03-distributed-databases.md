# Section: Data_Modeling
# Lesson: 04
# Distributed Databases
## 2021-04-20
---


# Basics of NoSQL Database Design
## Distributed Databases
In a **Distributed database** in order to habe high abailability, you will need copies of your data.


## Eventual Consistency
A consistency model used in distrubted computing to achieve **high abailabilty** that informally guarantees that, **if no new updates** are made to a given data item,
eventually all acces to that item will **return the last updated value**

- overtime, if no new changes are made, my data will be the same, also if new changes, my data will be diff in diff locations...
- its done miliseconds
- it has workarounds