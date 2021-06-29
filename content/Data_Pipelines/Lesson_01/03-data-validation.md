# Section: Data_Pipelines
# Lesson: 01
# 03 Data Validation
## 2021-06-28
---


## Data Validation
Definition: The process of ensuring taht data is present, correct & meaningull

Ensuring the quality of you data through automated validation checks is critical step in buliding data pipelines at any organiation

## Data Validation in Action
In our bikesharing example, we coudl have added the follwing validation steps

After loading from S3 to Redshift
- Validate the number of rows in Redshift match the nuber of records in S3

Once location business analysis is complete:
- validate that all locations have a daily visit average greater thatn 0
- validate that the nuber of locations in our outbut table match the nuber of tables in the input table.


## Why is it important
- data pipeline provides a set of logival guidelines and a common set of terminology
- the conceptual framework of data pipelines will help you better organize and execute everyday data engineering tasks.

