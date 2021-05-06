# Section: Cdw
# Lesson: 03
# 30 Sorting Key
## 2021-05-05
---

# Sorting Key
- one can define its columns as sort key
- upon loading, rows are sorted before distrubution to slice
- minimizes the query time sicne each node already has contiguous ranges of rows based on the sorting key
- useful for column sthat are used frquently in sortin like the date dimensions and tis corresponding foreigh key in teh fact table

![](https://i.imgur.com/eH60npF.png)

