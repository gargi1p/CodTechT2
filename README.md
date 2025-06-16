# 🚀 CodTech SQL Internship – Task 2

### 📊 Advanced Data Analysis using SQL

---

## 📁 Task Title  
**Advanced SQL Querying with CTEs, Subqueries & Window Functions**

---

## 🎯 Objective  
Perform **advanced data analysis** on a sample e-commerce dataset using:

- ✅ Common Table Expressions (CTEs)
- ✅ Subqueries
- ✅ Window Functions

This task aims to extract business insights and trends from relational data.

---

## 🧩 Dataset Schema

📦 customers
- customer_id (PK)
- name
- city
- signup_date

📦 products
- product_id (PK)
- product_name
- category
- price

📦 orders
- order_id (PK)
- customer_id (FK)
- product_id (FK)
- order_date
- quantity

---

## 🔍 Queries Summary

| Query Purpose | SQL Feature Used |
|---------------|------------------|
| Total sales per category | CTE |
| Rank customers by spend | Window Function |
| Latest product per customer | Subquery |
| Monthly sales trend | Window Function |

---

## 📌 Key Insights

- 💡 Electronics generated the highest revenue.
- 👤 Aditi Singh ranked #1 in spending.
- 📅 Most purchases happened in March & April 2023.
- 📈 Sales show an increasing trend over time.

---

## 📁 Files in this Folder

- `dataset.sql` – Create and populate tables
- `analysis_queries.sql` – Run advanced queries
- `README.md` – Task explanation and documentation



