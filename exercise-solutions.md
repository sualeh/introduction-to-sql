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

### 3.3
```sql
SELECT 
  Products.Product,
  Buyer
FROM 
  Products
  LEFT OUTER JOIN Purchases 
    ON Products.Product = Purchases.Product
```

### 3.4
```sql
SELECT 
  Products.Product,
  Price
FROM 
  Products
  LEFT OUTER JOIN Purchases 
    ON Products.Product = Purchases.Product
WHERE
  Buyer IS NULL
```


## Exercise 4 - Aggregates

### 4.1
```sql
SELECT
  Seller,
  SUM(Price) AS GrossSales
FROM
  Products
  INNER JOIN Purchases
    ON Products.Product = Purchases.Product
GROUP BY
  Seller
```

### 4.2
```sql
SELECT
  Seller,
  SUM(Price) AS GrossSales
FROM
  Products
  INNER JOIN Purchases
    ON Products.Product = Purchases.Product
GROUP BY
  Seller
HAVING
  GrossSales > 200
```

### 4.3
```sql
SELECT
  Seller,
  COUNT(*) AS NumberOfSales,
  AVG(Price) AS AverageSalePrice
FROM
  Products
  INNER JOIN Purchases
    ON Products.Product = Purchases.Product
GROUP BY
  Seller
```

