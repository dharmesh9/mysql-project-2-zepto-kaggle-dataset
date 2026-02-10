USE ZEPTO;

SELECT * 
FROM zepto.products;

SELECT COUNT(*)
FROM products;

SELECT *
FROM products
WHERE category IS  NULL
  AND name IS  NULL
  AND mrp IS  NULL
  AND discountPercent IS  NULL
  AND availableQuantity IS  NULL
  AND discountedSellingPrice IS  NULL
  AND weightInGms IS  NULL
  AND outOfStock IS  NULL
  AND quantity IS  NULL;
  
  SELECT DISTINCT CATEGORY 
  FROM products;
  
  SELECT outOfStock, COUNT(*) FROM products
  GROUP BY outOfStock;

SELECT NAME, COUNT(*) AS total_of_products FROM products
GROUP BY name
HAVING total_of_products > 1
ORDER BY total_of_products DESC;

SELECT *
FROM products
WHERE mrp = 0 AND discountedSellingPrice = 0;

SET SQL_SAFE_UPDATES = 0;
DELETE FROM products
WHERE mrp = 0 AND discountedSellingPrice = 0;
SET SQL_SAFE_UPDATES = 1;

UPDATE products
SET  mrp = mrp/100.00,
discountedSellingPrice = discountedSellingPrice/100.00;

SELECT mrp, discountedSellingPrice
FROM products;