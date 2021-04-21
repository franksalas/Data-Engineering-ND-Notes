# Section: Data_Modeling
# Lesson: 02
# 25 Upsert
## 2021-04-12
---

# Upsert
- In RDBMS lang, the term `upsert` refers to the idea of insertin a new orw in an existing table, or updating the row if already exist in the table
- the action of updating or inserting has been described as `Upsert`
- The wya this is handled in PosgreSQL is bu using the `INSERT` statement in a combination with the `ON CONFLICT` clause

## `INSERT`
- the `INSERT` statement add sin new rows within the table
- the value associated with specific target col can be added in any order

Lets look at a simple example, We will use tha customer address table as an example, which is defined with the following `CREATE` statenent
```sql
CREATE TABLE IF NOT EXISTS customer_address (
    customer_id int  **PRIMARY KEY**, 
    customer_street varchar NOT NULL,
    customer_city text NOT NULL,
    customer_state text NOT NULL
);
```
lets try to insert data into it by adding a nrew row:
```sql
INSERT into customer_address (
VALUES
    (432, '758 Main Street', 'Chicago', 'IL'
);
```
- Now lets assume that the customer moved and we need to update the cusomter's address
- We do not want to add a new customer id, if ther is any confilt on the `customer_id` we do not want that to change
- This will boue agood candiate for using the `ON CONFLICT`, `DO NOTHING` clause

```sql
INSERT INTO customer_address (customer_id, customer_street, customer_city, customer_state)
VALUES
 (
 432, '923 Knox Street', 'Albany', 'NY'
 ) 
ON CONFLICT (customer_id) 
DO NOTHING;
```
- now lets imagine we wnat to add more details on in the existing address for an existing customer,
- this woud be a good canditate for using the `ON CONFLICT`, `DO UPDATE` clause

```sql
INSERT INTO customer_address (customer_id, customer_street)
VALUES
    (
    432, '923 Knox Street, Suite 1' 
) 
ON CONFLICT (customer_id) 
DO UPDATE
    SET customer_street  = EXCLUDED.customer_street;
```

https://www.postgresqltutorial.com/postgresql-upsert/

https://www.postgresql.org/docs/9.5/sql-insert.html










