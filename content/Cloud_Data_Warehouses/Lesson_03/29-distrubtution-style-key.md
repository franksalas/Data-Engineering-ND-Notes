# Section: Cdw
# Lesson: -3
# 29 Distrubtution Style Key
## 2021-05-05
---

# Distribution Style: Key
Rows habving similar values are placed in the same slice
- this can lead to a skewed distr4ibution if some values of the  dist key are more frequent thatn others
- howeger, very useful whne a dimension table is too big to be distrubuted with all strategy. on that case, we distrubute both the fact table and the dimension table using the same dist key.
- if two tables are distrubted on the joining keys, redshift collocates the rows from both tables on the same slices.

![](https://i.imgur.com/74cxnbO.jpg)


![](https://i.imgur.com/U09xFIn.jpg)

## Distribution style : KEY : Syntax
- fact table
- dimension table
- 
![](https://i.imgur.com/mf4BYiW.jpg)
