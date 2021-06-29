# Section: Data_Pipelines
# Lesson: 01
# 04 Dags And Data Pipelines
## 2021-06-28
---


## DAGS: Data Aculic Graphs
- Data pipelines are well expressed as Directed Acylic Graphs
- The conceptual framework of data pipelies  will help you better organized and execute everyday data engineering tasks
- DAGS consist of verices, or nodes , & directed edges that connect those nodes
- DAGS have a direction -> and do not contain cycles (graph theory flashbacks..!!! UUGGGGGGHHH!!)


![](https://i.imgur.com/RajsIau.png)



## Definitions
- **Directed Acyclic Graphs (DAGs)**: DAGs are a special subset of graphs in which the edges between nodes have a specific direction, and no cycles exist. When we say “no cycles exist” what we mean is the nodes cant create a path back to themselves.
- **Nodes**: A step in the data pipeline process.
- **Edges**: The dependencies or relationships other between nodes.

![](https://i.imgur.com/e0fxEUi.png)












## Common Questions
- Are there real world cases where a data pipeline is not DAG?

It is possible to model a data pipeline that is not a DAG, meaning that it contains a cycle within the process. However, the vast majority of use cases for data pipelines can be described as a directed acyclic graph (DAG). This makes the code more understandable and maintainable.

- Can we have two different pipelines for the same data and can we merge them back together?

Yes. It's not uncommon for a data pipeline to take the same dataset, perform two different processes to analyze the it, then merge the results of those two processes back together.