# Solutions to Exercises

## Exercise 1 - Queries

### 1.1

```sql
SELECT
  *
FROM
  Products
WHERE
  Category = 'Household'
```

### 1.2

```sql
SELECT
  *
FROM
  Products
WHERE
  Price < 200
```

### 1.3

```sql
SELECT DISTINCT
  Product
FROM
  Purchases
WHERE
  Seller = 'Fred'
ORDER BY
  Product
```


## Exercise 2 - Modifications

### 2.1
- Add a Product
```sql
INSERT INTO Products
  (Product, Price, Category, Manufacturer)
VALUES
  ('New Product', 14.99, 'Clothing', 'Fashion, Inc.')
```
- Verify
```sql
SELECT
  *
FROM
  Products
```

### 2.2
- Update
```sql
UPDATE Products
SET 
  Price = 20.99
WHERE 
  Product  = 'New Product'
```
- Verify using the `SELECT` again

### 2.3
- Delete
```sql
DELETE
FROM
  Products
WHERE
  Product = 'New Product'
```
- Verify using the `SELECT` again


## Exercise 3 - Joins

### 3.1
None

### 3.2
```sql
SELECT
  Buyer,
  Products.Product,
  Price
FROM
  Products
  INNER JOIN Purchases
  ON Products.Product = Purchases.Product
WHERE
  Seller = 'Fred'
ORDER BY
  Buyer
```

## Exercise 4 - Unions

### 4.1
None


## Exercise 5 - Aggregate Functions

### 5.1
None

### 5.2
```sql
SELECT
  Seller,
  SUM(Price) AS GROSS_SALES
FROM
  Products
  INNER JOIN Purchases
  ON Products.Product = Purchases.Product
GROUP BY
  Seller
HAVING
  GROSS_SALES > 100
```


## Exercise 6 - Data Definition Language (DDL)

### 6.1
None
