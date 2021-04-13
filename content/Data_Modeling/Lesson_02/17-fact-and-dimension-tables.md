# Section: Data_Modeling
# Lesson: 02
# 17 Fact And Dimension Tables
## 2021-04-12
---
# Fact and Dimension Tables

- work together to create an organizaed data model
- while fact and dimension are not created differently in the DDL, they are coneptual and expremely inportant for ogranization.
- 

## Fact tables
- consite of the measurements, metrics or facts of a business process
- ints or numbes
- **HOW MANY** units of products were bought `Fact_Sales`

## Dimension tables
- strucre that categorixed facts and measures in order to enable user to answer busness quesitons
-  **WHERE** the product was bought? `Dim_Store`
-  **WHEN** the product was bought? `Dim_Date`
-  **WHAT** product was bought? `Dim_Product`
   - people    
   - products
   - place 
   - time

## Implementing Diffren Schemas
Two or the most popular (Because of their simplicity) data mart shcema for data warehouses are
1. Star S chema
2. Snowflake Schema



![](https://video.udacity-data.com/topher/2019/March/5c81772b_dimension-fact-tables/dimension-fact-tables.png)