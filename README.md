# 🛒 Zepto Product Data Analysis (SQL Project)

## 📌 Project Overview

This project analyzes a retail product dataset (`zepto_dataset.csv`) using MySQL.  
The objective is to perform data cleaning, exploratory data analysis (EDA), and business-driven SQL queries to generate meaningful insights related to pricing, discounts, inventory, and revenue.

The project simulates real-world retail analytics use cases such as:
- Identifying best-value products
- Detecting low inventory categories
- Estimating revenue
- Performing data quality checks
- Evaluating pricing strategy

---

## 📂 Project Structure

Zepto-SQL-Analysis  
│  
├── zepto_dataset.csv                  # Raw dataset  
├── create_table_sql_query.sql         # Table creation script  
├── Business_que_for_this_project.sql  # Business questions with solutions  
└── README.md                          # Project documentation  

---

## 🗄️ Database Setup

### 1️⃣ Create Database
```sql
CREATE DATABASE zepto;
USE zepto;
```

### 2️⃣ Create Table
Run the script:
```
create_table_sql_query.sql
```

### 3️⃣ Import Dataset
Import `zepto_dataset.csv` into the `products` table using:
- MySQL Workbench Import Wizard  
OR  
- LOAD DATA INFILE command  

---

## 🧹 Data Cleaning Performed

- Removed records where `mrp = 0` AND `discountedSellingPrice = 0`
- Converted price columns from paise to rupees:
```sql
UPDATE products
SET mrp = mrp/100.00,
    discountedSellingPrice = discountedSellingPrice/100.00;
```
- Checked NULL values in important columns
- Identified duplicate product names
- Validated discount percentage values
- Performed data quality checks on missing fields

---

## 📊 Business Questions Solved

### 🔹 Pricing & Discount Analysis
- Top 10 best-value products based on discount percentage
- Products with MRP > ₹500 and discount < 10%
- Products where discounted price is 30% lower than MRP
- Categories offering highest average discount
- Products priced above overall average price per gram

### 🔹 Inventory Analysis
- Categories with total quantity below 500 (low inventory)
- Total inventory weight per category
- Out-of-stock product count per category
- Product quantity classification (Low / Medium / Bulk)

### 🔹 Revenue Analysis
- Estimated revenue per category (availableQuantity × discountedSellingPrice)
- Top 10 products generating highest estimated revenue
- Revenue per product row vs grouped revenue

### 🔹 Advanced Analysis
- Price per gram calculation
- Average weight per category
- Data quality check for NULL discountPercent values

---

## 📈 Key Insights Generated

✔ Identified premium products with low discounts  
✔ Detected categories with critically low stock  
✔ Evaluated product value using price-per-gram metric  
✔ Estimated potential revenue by category  
✔ Flagged missing discount data for quality review  

---

## 🛠️ Tools & Technologies Used

- MySQL
- SQL (JOINs, Subqueries, Aggregations, CASE statements)
- Data Cleaning Techniques
- Business Logic & KPI Calculations

---

## 🎯 SQL Concepts Demonstrated

- Aggregate Functions (SUM, AVG, COUNT)
- GROUP BY & HAVING
- Subqueries
- CASE Statements
- Data Cleaning using DELETE & UPDATE
- Derived Metrics (Price per Gram, Estimated Revenue)
- Inventory & Pricing Analysis

---

## 🚀 How to Run This Project

1. Clone this repository  
2. Open MySQL Workbench  
3. Run `create_table_sql_query.sql`  
4. Import `zepto_dataset.csv`  
5. Execute `Business_que_for_this_project.sql`  
6. Analyze the results  

---

## 📌 Learning Outcome

This project demonstrates how SQL can be applied to:

- Retail Analytics  
- Business Intelligence Reporting  
- Inventory Optimization  
- Pricing Strategy Evaluation  
- Data Quality Validation  

---

## 📌 Learning Outcome
...

## 🙌 Acknowledgment
This project was inspired by the work of [amlanmohanty1](https://github.com/amlanmohanty1/zepto-SQL-data-analysis-project/tree/main).  
Their Zepto SQL data analysis project helped shape the structure and analytical approach used here.  
While half code and insights in this repository are independently written, I drew inspiration from their methodology.

## 👤 Author

Dharmesh Makwana
| SQL | Data Analytics | Business Intelligence
