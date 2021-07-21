# Section: Data_Pipeline
# Lesson: 03
# 11 Subdags Intro
## 2021-07-20
---


## SubDAGs

Commonly repeated series of tasks within DAGs can be captured as reusable SubDAGs. Benefits include:

- Decrease the amount of code we need to write and maintain to create a new DAG
- Easier to understand the high level goals of a DAG
- Bug fixes, speedups, and other enhancements can be made more quickly and distributed to all DAGs that use that SubDAG

![](https://i.imgur.com/naalu39.png)

![](https://i.imgur.com/e3OgGlO.png)

# DRAWBACKS

## Drawbacks of Using SubDAGs
- Limit the visibility within the Airflow UI
- Abstraction makes understanding what the DAG is doing more difficult
- Encourages premature optimization

![](https://i.imgur.com/7vlCFTX.png)

![](https://i.imgur.com/QifW5qB.png)
![](https://i.imgur.com/hHlQ94t.png)
