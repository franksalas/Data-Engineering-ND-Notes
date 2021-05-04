# Section: Cdw
# Lesson: 01
# 34 Data Warehouse Technologies
## 2021-05-04
---

# Data WArehouse Tech

## The last mile: Delivering the analutics to users

### Data is availible...
- in an understandable * perfomr dimenisonal model
- with *conformend dimensions* or separate Data MArts
- for users to report and visualize
  - By interactinv directly with the model
  - or in most cases, through a BI applciation


### OLAP cubes is a very convinet way to slicing, dicing, and drilling down
> how do we serve OLAP cubes?

## OLAP Cubes technology
### Aproach 1:
**Pre-aggregate** the OLAP cubes and saves them on a special purpose non-related database (**MOLAP**)

### Aproach 2:
Compute the OLAP cubes **on the fly** from teh existing relational databses where the dimensional model resides (**ROLAP**)
- popular

## DEMO: Column format in ROLAP
- use postgresql with a columnar table extension
- load a dataset in a normal table
- load the same dataset in a columnar table
- compate the performance of the fact-aggrating query performance in both tables
- 