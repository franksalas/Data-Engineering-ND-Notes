# Section: Cdw
# Lesson: 01
# 06 Dimensional Modeling
## 2021-05-01
---

# Dimentionsal modeling recap
![](https://i.imgur.com/m5aaL2e.png)
- 3NF lots expensive joins
- Star schema
  - joins with dimension only 
  - good for olap

# Facts & Dimensions

## Fact table
- record business events
  - `order`
  - `phone call`
  - `book review`
- Fact tables columns record events recorded in quantifiable **metrics** like
    - `quantity of an item`
    - `duration of a call`
    - `book rating`

## Dimension tables
- record the context of the business events
  - `who`
  - `what`
  - `where`
  - `why`
  - etc..
- Dimension tables columns contain **attrubutes** like
  - `store item purchased`
  - `customer who made call`
  - etc..

# Facts or Dimension Dilemma
- For facts, if you're unsure if a column is a fact or dimension. the simples ruel is that a fact is usually ***Numeric & Additive***
> ... shit we can calculate
### Example facts
- A comment on a article represents an event but we can note esily make a static out of its content per se ( **NOT a good fact**)
- Invocie number is numeric but adding it does not make sense (**NOT a good fact**)
- Total amount of an invoice coudl be added to compute total sales (**A GOOD FACT**)

## Example dimensions
- Date & time are alwys a dimendion
- Physical locations & their attrubutes are good candidates dimensions
- Human Roles like cusomers and staff always good candidates fo rdimensions
- Goods sold alwys good candidates for dimensions.


## Naive ETL: From 3NF to ETL
![](https://i.imgur.com/2BGwntL.png)
