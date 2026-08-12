<div align="center">

# -- ! Data Transformer — SQL Data Analysis Project ! --
### *Customer, Order & Employee Data Management, Transformation & Analysis*

[![MySQL](https://img.shields.io/badge/MySQL-8.0%2B-4479A1?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)
[![SQL](https://img.shields.io/badge/SQL-Data%20Analysis-FF6F00?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)
[![Joins](https://img.shields.io/badge/Joins-INNER%20%7C%20LEFT%20%7C%20RIGHT-4CAF50?style=for-the-badge)](https://www.mysql.com/)
[![Window Functions](https://img.shields.io/badge/Window%20Functions-RANK%20%7C%20SUM-9C27B0?style=for-the-badge)](https://www.mysql.com/)

<br/>

> *"Raw data becomes valuable when SQL transforms it into meaningful information."*

</div>

---

## 📋 Table of Contents

- [📌 Overview](#-overview)
- [🎯 Problem Statement](#-problem-statement)
- [✨ Key Features](#-key-features)
- [🏗️ Database Structure](#️-database-structure)
- [🔗 Table Relationships](#-table-relationships)
- [🔄 Project Workflow](#-project-workflow)
- [👥 Part A — Customer & Order Analysis](#-part-a--customer--order-analysis)
- [👨‍💼 Part B — Employee Analysis](#-part-b--employee-analysis)
- [📅 Part C — Date & Time Functions](#-part-c--date--time-functions)
- [🔤 Part D — String Functions](#-part-d--string-functions)
- [📊 Part E — Aggregate, Ranking & Conditional Analysis](#-part-e--aggregate-ranking--conditional-analysis)
- [🛠️ Tech Stack](#️-tech-stack)
- [📈 Results & Insights](#-results--insights)
- [🏆 Advantages](#-advantages)
- [🚀 How to Run](#-how-to-run)
- [📄 License](#-license)
- [👤 Author](#-author)
- [🙏 Acknowledgements](#-acknowledgements)

---

## 📌 Overview

The **Data Transformer** is a MySQL-based database project designed to demonstrate practical SQL concepts through **customer, order, and employee data**.

The project creates a relational database named `Data_Transformer` containing three core tables:

- 👥 **Customers** — Stores customer identity, email, and registration information.
- 🛒 **Orders** — Stores customer orders, order dates, and transaction amounts.
- 👨‍💼 **Employees** — Stores employee details, departments, joining dates, and salaries.

The SQL script performs a variety of database operations including **JOINs, subqueries, date functions, string functions, window functions, ranking, running totals, and CASE-based classification**.

---

## 🎯 Problem Statement

> **Objective:** Build and analyze a relational MySQL database that demonstrates how SQL can be used to connect tables, transform data, and extract meaningful business insights.

The project focuses on practical SQL operations such as:

| 📂 Area | 🔍 Purpose |
|---|---|
| Customer & Order Data | Connect customers with their orders |
| JOIN Operations | Combine related records from multiple tables |
| Subqueries | Compare values against calculated averages |
| Date Functions | Extract and transform order dates |
| String Functions | Format and modify text data |
| Window Functions | Calculate running totals and rankings |
| CASE Expressions | Categorize orders and employee salaries |

The goal is to demonstrate **relational database querying, data transformation, and analytical SQL techniques using MySQL**.

---

## ✨ Key Features

| Feature | Description |
|---|---|
| 🗄️ **Database Creation** | Creates the `Data_Transformer` database |
| 👥 **Customer Management** | Stores customer records with registration details |
| 🛒 **Order Management** | Stores orders linked to customers |
| 👨‍💼 **Employee Management** | Stores employee records across departments |
| 🔗 **INNER JOIN** | Retrieves matching customer and order records |
| ⬅️ **LEFT JOIN** | Returns all customers with matching orders where available |
| ➡️ **RIGHT JOIN** | Returns all orders with matching customer information |
| 🧮 **Subqueries** | Compares orders and salaries with average values |
| 📅 **Date Functions** | Uses `YEAR()`, `MONTH()`, `DATEDIFF()`, and `DATE_FORMAT()` |
| 🔤 **String Functions** | Uses `CONCAT()`, `REPLACE()`, `UPPER()`, `LOWER()`, and `TRIM()` |
| 📈 **Running Total** | Uses `SUM() OVER()` to calculate cumulative order amounts |
| 🏅 **Order Ranking** | Uses `RANK() OVER()` to rank orders by amount |
| 🏷️ **CASE Classification** | Categorizes discounts and salary levels |

---

## 🏗️ Database Structure

```text
📦 Data_Transformer
│
├── 👥 customers
│   ├── CustomerID          ← Primary Key
│   ├── FirstName
│   ├── LastName
│   ├── Email
│   └── RegistrationDate
│
├── 🛒 orders
│   ├── OrderID             ← Primary Key
│   ├── CustomerID          ← Foreign Key
│   ├── OrderDate
│   └── TotalAmount
│
└── 👨‍💼 employees
    ├── EmployeeID          ← Primary Key
    ├── FirstName
    ├── LastName
    ├── Department
    ├── HireDate
    └── Salary
```
---

## 🔗 Table Relationships

The **Customers** and **Orders** tables are connected using the common field:

```text
CustomerID
customers.CustomerID
        │
        │ Primary Key
        ▼
orders.CustomerID
        │
        │ Foreign Key
        ▼
Customer Orders

This relationship allows customer information and order information to be analyzed together using SQL `JOIN` operations.
```
---

## 🔄 Project Workflow

```text
         Program Start
              │
              ▼
┌──────────────────────────────┐
│ Create Data_Transformer DB   │
└──────────────┬───────────────┘
               │
               ▼
┌──────────────────────────────┐
│ Create Customers Table       │
└──────────────┬───────────────┘
               │
               ▼
┌──────────────────────────────┐
│ Insert Customer Records      │
└──────────────┬───────────────┘
               │
               ▼
┌──────────────────────────────┐
│ Create Orders Table          │
└──────────────┬───────────────┘
               │
               ▼
┌──────────────────────────────┐
│ Insert Order Records         │
└──────────────┬───────────────┘
               │
               ▼
┌──────────────────────────────┐
│ Create Employees Table       │
└──────────────┬───────────────┘
               │
               ▼
┌──────────────────────────────┐
│ Insert Employee Records      │
└──────────────┬───────────────┘
               │
               ▼
┌──────────────────────────────┐
│ Execute SQL Analysis Queries │
└──────────────┬───────────────┘
               │
               ▼
       Meaningful Results 📊
```

---

## 👥 Part A — Customer & Order Analysis
## 🔗 1. INNER JOIN

The project combines customers and orders using an INNER JOIN:
```
SELECT *
FROM orders
INNER JOIN customers
ON orders.CustomerID = customers.CustomerID;
```
Purpose: Returns records where a customer has a matching order.

---

## 👥 Part A — Customer & Order Analysis

### 🔗 1. INNER JOIN

The project combines customers and orders using an `INNER JOIN`:

\`\`\`sql
SELECT *
FROM orders
INNER JOIN customers
ON orders.CustomerID = customers.CustomerID;
\`\`\`

**Purpose:** Returns records where a customer has a matching order.

---

### ⬅️ 2. LEFT JOIN

\`\`\`sql
SELECT *
FROM customers
LEFT JOIN orders
ON customers.CustomerID = orders.CustomerID;
\`\`\`

**Purpose:** Returns all customers and their matching orders where available.

---

### ➡️ 3. RIGHT JOIN

\`\`\`sql
SELECT *
FROM customers
RIGHT JOIN orders
ON customers.CustomerID = orders.CustomerID;
\`\`\`

**Purpose:** Returns all orders along with matching customer information.

---

### 🔄 4. Combining LEFT & RIGHT JOIN Results

The project demonstrates combining `LEFT JOIN` and `RIGHT JOIN` results using `UNION` to create a full-join style result.

\`\`\`sql
SELECT *
FROM customers
LEFT JOIN orders
ON customers.CustomerID = orders.CustomerID

UNION

SELECT *
FROM customers
RIGHT JOIN orders
ON customers.CustomerID = orders.CustomerID;
\`\`\`

---

### 💰 5. Orders Above Average Amount

\`\`\`sql
SELECT *
FROM customers
INNER JOIN orders
ON customers.CustomerID = orders.CustomerID
WHERE orders.TotalAmount >
      (SELECT AVG(TotalAmount) FROM orders);
\`\`\`

**Purpose:** Identifies customer orders whose `TotalAmount` is greater than the average order amount.

---

## 👨‍💼 Part B — Employee Analysis

### 💵 6. Employees Above Average Salary

\`\`\`sql
SELECT *
FROM employees
WHERE Salary > (SELECT AVG(Salary) FROM employees);
\`\`\`

**Purpose:** Finds employees whose salary is above the average salary of all employees.

---

## 📅 Part C — Date & Time Functions

### 📆 7. Extract Order Year & Month

\`\`\`sql
SELECT *,
       YEAR(OrderDate) AS OrderYear,
       MONTH(OrderDate) AS OrderMonth
FROM orders;
\`\`\`

**Functions Used:**

| Function | Purpose |
|---|---|
| `YEAR()` | Extracts the year from the order date |
| `MONTH()` | Extracts the month from the order date |

---

### ⏳ 8. Calculate Days Since Order

\`\`\`sql
SELECT *,
       DATEDIFF(CURDATE(), OrderDate) AS Days_Difference
FROM orders;
\`\`\`

**Purpose:** Calculates the number of days between the current date and each order date.

---

### 🗓️ 9. Format Order Date

\`\`\`sql
SELECT *,
       DATE_FORMAT(OrderDate, '%d-%m-%Y') AS Formatted_OrderDate
FROM orders;
\`\`\`

**Purpose:** Converts the order date into a `DD-MM-YYYY` display format.

---

## 🔤 Part D — String Functions

### 👤 10. Create Full Employee Name

\`\`\`sql
SELECT *,
       CONCAT(FirstName, ' ', LastName) AS FullName
FROM employees;
\`\`\`

**Purpose:** Combines first and last names into a single `FullName` column.

---

### ✏️ 11. Replace Customer First Name

\`\`\`sql
SELECT *,
       REPLACE(FirstName, 'John', 'Johnathan') AS UpdatedFirstName
FROM customers;
\`\`\`

**Purpose:** Demonstrates text replacement using the `REPLACE()` function.

---

### 🔠 12. Convert Text to Uppercase & Lowercase

\`\`\`sql
SELECT *,
       UPPER(FirstName) AS UPPER_FIRST_NAME,
       LOWER(LastName) AS LOWER_LAST_NAME
FROM customers;
\`\`\`

**Functions Used:**

| Function | Purpose |
|---|---|
| `UPPER()` | Converts text to uppercase |
| `LOWER()` | Converts text to lowercase |

---

### ✂️ 13. Trim Customer Emails

\`\`\`sql
SELECT *,
       TRIM(Email) AS TrimmedEmail
FROM customers;
\`\`\`

**Purpose:** Demonstrates removal of leading and trailing whitespace from email values.

---

## 📊 Part E — Aggregate, Ranking & Conditional Analysis

### ➕ 14. Running Order Total

\`\`\`sql
SELECT *,
       SUM(TotalAmount) OVER (ORDER BY OrderID) AS RunningTotal
FROM orders;
\`\`\`

**Purpose:** Calculates a cumulative running total of order amounts according to `OrderID`.

---

### 🏅 15. Rank Orders by Total Amount

\`\`\`sql
SELECT *,
       RANK() OVER (ORDER BY TotalAmount DESC) AS OrderRank
FROM orders;
\`\`\`

**Purpose:** Ranks orders from the highest `TotalAmount` to the lowest.

---

### 🏷️ 16. Calculate Discount Percentage

\`\`\`sql
SELECT *,
       CASE
           WHEN TotalAmount > 1000 THEN 10
           WHEN TotalAmount > 500 THEN 5
           ELSE 0
       END AS DiscountPercent
FROM orders;
\`\`\`

**Business Logic:**

| Order Amount | Discount |
|---|---:|
| `> 1000` | 10% |
| `> 500` | 5% |
| `500 or below` | 0% |

---

### 💼 17. Categorize Employee Salaries

\`\`\`sql
SELECT *,
       CASE
           WHEN Salary > 80000 THEN 'HIGH'
           WHEN Salary >= 50000 THEN 'MEDIUM'
           ELSE 'LOW'
       END AS SalaryCategory
FROM employees;
\`\`\`

**Salary Categories:**

| Salary Condition | Category |
|---|---|
| `> 80000` | HIGH |
| `>= 50000` | MEDIUM |
| `< 50000` | LOW |

---

## 🛠️ Tech Stack

| Tool / Concept | Purpose |
|---|---|
| 🐬 **MySQL** | Database management system |
| 🗃️ **SQL** | Database querying and transformation |
| 🔗 **JOINs** | Combining related customer and order data |
| 🧮 **Subqueries** | Average-based comparisons |
| 📅 **Date Functions** | Date extraction, calculation, and formatting |
| 🔤 **String Functions** | Text transformation and formatting |
| 📈 **Window Functions** | Running totals and ranking |
| 🏷️ **CASE Expression** | Business-rule-based classification |
| 🔑 **Primary Key** | Unique identification of records |
| 🔗 **Foreign Key** | Relationship between customers and orders |

---

## 📈 Results & Insights

After executing the SQL queries, the project provides the following analytical capabilities:

- ✅ **Customer–Order Relationship Analysis** through multiple JOIN operations
- 💰 **Above-Average Order Detection** using a subquery with `AVG()`
- 💵 **Above-Average Salary Detection** for employees
- 📅 **Order Date Analysis** using year, month, date difference, and formatting functions
- 🔤 **Text Transformation** using multiple SQL string functions
- 📈 **Running Order Total** using a windowed `SUM()`
- 🏅 **Order Ranking** based on transaction amount
- 🏷️ **Automatic Discount Classification** using `CASE`
- 💼 **Employee Salary Categorization** into HIGH, MEDIUM, and LOW

---

## 🏆 Advantages

| Advantage | Detail |
|---|---|
| 🎓 **Educational** | Covers multiple important SQL concepts in one project |
| 🔗 **Relational** | Demonstrates primary-key and foreign-key relationships |
| 📊 **Analytical** | Converts raw records into useful business-oriented results |
| 🧮 **Practical** | Uses real-world style customers, orders, and employee data |
| 📅 **Data Transformation** | Demonstrates date and string transformations |
| 📈 **Advanced SQL** | Includes window functions and ranking |
| 🏷️ **Business Logic** | Uses `CASE` expressions for meaningful categorization |
| 🧩 **Extensible** | Can be expanded with additional queries, tables, and reports |

---

## 🚀 How to Run

### 1️⃣ Install MySQL

Make sure **MySQL Server** and a MySQL client such as **MySQL Workbench** are installed.

### 2️⃣ Open the SQL File

Open:

\`\`\`text
Project - 2.sql
\`\`\`

in your MySQL editor.

### 3️⃣ Execute the Database Setup

Run the database and table creation statements:

\`\`\`sql
CREATE DATABASE Data_Transformer;

USE Data_Transformer;
\`\`\`

Then execute the table creation and `INSERT` statements.

### 4️⃣ Run the Analysis Queries

Execute the queries section-by-section to view the JOIN, date, string, window-function, and conditional-analysis results.

---

## 📄 License

This project is intended for **educational and learning purposes**.

\`\`\`text
Free to use, study, modify, and extend for educational purposes.
\`\`\`

---

## 👤 Author

<div align="center">

### Sneha Gupta

> *"Data becomes powerful when you know how to transform it into insights."*

**🎓 Role:** BBA Student | SQL Learner  
**📍 Location:** India  
**🛠️ Skills:** SQL · MySQL · Data Analysis · Database Management

</div>

---

## 🙏 Acknowledgements

This project was developed as a practical exercise in **SQL database creation, relational data management, and data analysis**.

Special appreciation for the concepts and tools used throughout the project:

- 🐬 **MySQL** — Relational database management
- 🗃️ **SQL** — Database querying and transformation
- 🔗 **JOIN Operations** — Relational data analysis
- 📊 **Window Functions** — Advanced SQL analysis
- 🧮 **Subqueries & CASE** — Analytical and business logic

---

<div align="center">

---

*Made with ❤️ and SQL — Last updated: 12 August, 2026*

</div>
