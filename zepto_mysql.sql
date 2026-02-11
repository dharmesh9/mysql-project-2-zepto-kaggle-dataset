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

-- Q1. Find the top 10 best-value products based on the discount percentage.
	SELECT DISTINCT NAME, mrp,discountPercent
    FROM products
    ORDER BY discountPercent DESC
    LIMIT 10;

-- Q2.What are the Products with High MRP but Out of Stock
SELECT NAME,mrp, outOfStock 
FROM products
WHERE mrp >= 300 AND outOfStock = "TRUE"
ORDER BY mrp DESC;

-- Q3.Calculate Estimated Revenue for each category
SELECT  DISTINCT category, SUM(availableQuantity * discountedSellingPrice) AS total_revenue
FROM products
GROUP BY category
ORDER BY 2 desc;

-- Q4. Find all products where MRP is greater than ₹500 and discount is less than 10%.


-- Q5. Identify the top 5 categories offering the highest average discount percentage.


-- Q6. Find the price per gram for products above 100g and sort by best value.


-- Q7.Group the products into categories like Low, Medium, Bulk.


-- Q8.What is the Total Inventory Weight Per Category 

-- Q9. Find the top 10 products generating the highest estimated revenue (mrp × availableQuantity).

-- Q10. Identify products where the discounted selling price is more than 30% lower than MRP.

-- Q11. Determine the total number of out‑of‑stock products in each category.

-- Q12. Find the average weight of products per category and sort by heaviest categories.

-- Q13. List products where the discountPercent is NULL or missing (data quality check).

-- Q14. Identify categories where the total available quantity is below 500 (low‑inventory categories).

-- Q15. Find products where the price per gram (discountedSellingPrice / weightInGms) is above the overall average price per gram.
