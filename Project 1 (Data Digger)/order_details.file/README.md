<div align="center">

# 📑 Order Details Management Database
### *A Structured SQL Module for Managing Order Item Details Using MySQL*

[![MySQL](https://img.shields.io/badge/MySQL-8.0+-4479A1?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)
[![SQL](https://img.shields.io/badge/SQL-Database%20Management-F29111?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)
[![CRUD](https://img.shields.io/badge/CRUD-Create%20Read%20Update%20Delete-4CAF50?style=for-the-badge)]()
[![Relational Database](https://img.shields.io/badge/Order%20Details-Management-blue?style=for-the-badge)]()

<br/>

> *"Every order is a collection of products, and every product tells a business story."*

</div>

---

# 📋 Table of Contents

- [📌 Overview](#-overview)
- [🎯 Problem Statement](#-problem-statement)
- [✨ Key Features](#-key-features)
- [🏗️ Project Structure](#️-project-structure)
- [🗂️ Database Schema](#️-database-schema)
- [🔄 Project Workflow](#-project-workflow)
- [📑 OrderDetails Table Structure](#-orderdetails-table-structure)
- [🛠️ SQL Operations Performed](#️-sql-operations-performed)
- [💻 SQL Queries](#-sql-queries)
- [🛠️ Tech Stack](#️-tech-stack)
- [📊 Results & Insights](#-results--insights)
- [🏆 Advantages](#-advantages)
- [📄 License](#-license)
- [👩‍💻 Author](#-author)
- [🙏 Acknowledgements](#-acknowledgements)

---

# 📌 Overview

The **OrderDetails.sql** module is the fourth and final component of the **DataDigger Database Management System**.

This module stores detailed information about every product included in a customer order. It acts as a bridge between the **Orders** and **Products** tables by maintaining relationships using **Foreign Keys**.

Each record represents an individual product purchased in an order, including its quantity and subtotal amount. This module also demonstrates SQL aggregate functions and reporting queries commonly used in sales and inventory management.

---

# 🎯 Problem Statement

> **Objective:** Design and implement an OrderDetails table that records products purchased in each order and maintains relationships between Orders and Products.

The system should allow users to:

- Store detailed information for every ordered product.
- Link orders with products using Foreign Keys.
- Record product quantity and subtotal.
- Retrieve order details for a specific order.
- Calculate total revenue generated.
- Identify the most ordered products.
- Count how many times a product has been sold.

This module demonstrates real-world relational database concepts used in billing, inventory, and sales management systems.

---

# ✨ Key Features

| Feature | Description |
|---------|-------------|
| 📦 Order Item Management | Stores detailed product information for each order |
| 🔑 Primary Key | Every order detail has a unique OrderDetailID |
| 🔗 Foreign Keys | Connects Orders and Products tables |
| ➕ Insert Records | Add ordered product details |
| 🔍 Retrieve Order Details | View products belonging to a specific order |
| 💰 Revenue Calculation | Calculate total sales using SUM() |
| 📊 Sales Analysis | Find the most ordered products |
| 🔢 Product Sales Count | Count how many times a product has been sold |

---

# 🏗️ Project Structure

```text
📦 DataDigger Database
│
├── 📄 orderdetails.sql
├── 📄 README.md
```

---

# 🗂️ Database Schema

```text
Orders Table
      │
      │
      ▼
   OrderID
      │
      │
      ▼
OrderDetails Table
│
├── OrderDetailID (Primary Key)
├── OrderID (Foreign Key)
├── ProductID (Foreign Key)
├── Quantity
└── SubTotal
      ▲
      │
      │
Products Table
```

The **OrderDetails** table establishes a relationship between the **Orders** and **Products** tables using **Foreign Keys**.

It ensures that every ordered product belongs to a valid order and references an existing product, maintaining **referential integrity** within the database.

---

# 🔄 Project Workflow

```text
Start
   │
   ▼
Create OrderDetails Table
   │
   ▼
Define Primary Key
   │
   ▼
Create Foreign Key Relationships
   │
   ▼
Insert Sample Order Details
   │
   ▼
Retrieve Order Details
   │
   ▼
Calculate Total Revenue
   │
   ▼
Find Most Ordered Products
   │
   ▼
Count Product Sales
   │
   ▼
End
```

---

# 📑 OrderDetails Table Structure

The **OrderDetails** table stores detailed information about every product included in an order.

It acts as a bridge table between the **Orders** and **Products** tables by maintaining relationships using Foreign Keys.

---

## 📋 Table Design

| Column Name | Data Type | Constraint | Description |
|-------------|-----------|------------|-------------|
| `OrderDetailID` | INT | PRIMARY KEY | Unique identifier for each order detail |
| `OrderID` | INT | FOREIGN KEY | References the Orders table |
| `ProductID` | INT | FOREIGN KEY | References the Products table |
| `Quantity` | INT | NOT NULL | Quantity of the ordered product |
| `SubTotal` | INT | NOT NULL | Total price of the ordered quantity |

---

# 🔑 Primary Key

```sql
OrderDetailID INT PRIMARY KEY
```

### Why Primary Key?

- Provides a unique identity for every order detail.
- Prevents duplicate records.
- Makes searching and updating faster.
- Ensures every order item is uniquely identifiable.

---

# 🔗 Foreign Keys

```sql
FOREIGN KEY (OrderID)
REFERENCES Orders(OrderID);
```

```sql
FOREIGN KEY (ProductID)
REFERENCES Products(ProductID);
```

### Why Foreign Keys?

- Connects every order detail to a valid order.
- Connects every ordered item to an existing product.
- Maintains referential integrity.
- Prevents invalid OrderID and ProductID entries.

---

# 🛠️ SQL Operations Performed

This module demonstrates CRUD operations along with SQL aggregate and analytical functions.

| Operation | SQL Command | Purpose |
|-----------|------------|----------|
| Create | CREATE TABLE | Creates the OrderDetails table |
| Insert | INSERT INTO | Adds ordered product records |
| Read | SELECT | Retrieves order details |
| Aggregate | SUM() | Calculates total revenue |
| Grouping | GROUP BY | Groups products for analysis |
| Counting | COUNT() | Counts product sales |

---

## 1️⃣ Create OrderDetails Table

Creates the OrderDetails table with Primary Key and Foreign Key constraints.

```sql
CREATE TABLE OrderDetails(
OrderDetailID INT PRIMARY KEY,
OrderID INT,
ProductID INT,
Quantity INT,
SubTotal INT,
FOREIGN KEY(OrderID) REFERENCES Orders(OrderID),
FOREIGN KEY(ProductID) REFERENCES Products(ProductID)
);
```

---

## 2️⃣ Insert Sample Order Details

Stores product information for each customer order.

Example:

```sql
INSERT INTO OrderDetails
VALUES
(1,1,1,2,110000);
```

Multiple order detail records can be inserted to represent products purchased in different orders.

---

## 3️⃣ Retrieve Order Details for a Specific Order

Displays all products belonging to a selected order.

Example:

```sql
SELECT *
FROM OrderDetails
WHERE OrderID = 1;
```

This query retrieves every product associated with the specified order.

---

## 4️⃣ Calculate Total Revenue Generated

Calculates the total revenue generated from all orders using the **SUM()** aggregate function.

### SQL Query

```sql
SELECT SUM(SubTotal)
FROM OrderDetails;
```

### 📖 Explanation

- Uses the **SUM()** aggregate function.
- Adds all values in the **SubTotal** column.
- Displays the overall revenue generated from all customer orders.

---

## 5️⃣ Retrieve Top 3 Most Ordered Products

Displays the three most frequently ordered products.

### SQL Query

```sql
SELECT ProductID, COUNT(ProductID)
FROM OrderDetails
GROUP BY ProductID
ORDER BY COUNT(ProductID) DESC
LIMIT 3;
```

### 📖 Explanation

- **COUNT(ProductID)** counts how many times each product appears.
- **GROUP BY** groups records based on ProductID.
- **ORDER BY ... DESC** sorts products from highest to lowest order count.
- **LIMIT 3** displays only the top three products.

---

## 6️⃣ Count How Many Times a Product Has Been Sold

Counts how many times a specific product has been sold.

### SQL Query

```sql
SELECT COUNT(ProductID)
FROM OrderDetails
WHERE ProductID = 1;
```

### 📖 Explanation

- Uses the **COUNT()** aggregate function.
- Counts the number of records for the selected ProductID.
- Helps analyze the sales frequency of a product.

---

# 📊 Results & Insights

After executing all SQL queries, the following outcomes are achieved:

| Result | Description |
|---------|-------------|
| ✅ OrderDetails Table Created | Table created successfully with Primary and Foreign Keys |
| ✅ Records Inserted | Ordered product records stored successfully |
| ✅ Order Details Retrieved | Products of a specific order displayed correctly |
| ✅ Revenue Calculated | Total sales revenue generated using SUM() |
| ✅ Top Products Identified | Most ordered products retrieved successfully |
| ✅ Product Sales Count | Number of times a product was sold calculated correctly |

---

# 🌍 Real-World Applications

The **OrderDetails** table is widely used in:

- 🛒 E-Commerce Platforms
- 🏬 Retail Billing Systems
- 🍕 Food Delivery Applications
- 📦 Inventory & Warehouse Management
- 🧾 Invoice & Billing Software
- 💳 POS (Point of Sale) Systems
- 📊 Sales Analytics Dashboards
- 📈 Business Intelligence & Reporting

---

# 🏆 Advantages

| Advantage | Description |
|-----------|-------------|
| 🔗 Strong Data Relationships | Connects Orders and Products using Foreign Keys |
| 📦 Detailed Order Tracking | Stores item-wise order information |
| 💰 Revenue Analysis | Calculates total sales revenue efficiently |
| 📊 Sales Insights | Identifies the most ordered products |
| 🔍 Easy Reporting | Retrieves order details quickly |
| 📈 Business Analytics | Supports sales and inventory analysis |
| 🚀 Better Inventory Control | Helps monitor product demand |
| 💼 Industry-Oriented Design | Similar to real-world order management databases |

---

# 🛠️ Tech Stack

| Technology | Purpose |
|------------|---------|
| 🗄️ MySQL | Relational Database Management System |
| 💻 SQL | Database Query Language |
| 🖥️ MySQL Command Line Client | SQL Query Execution |
| 📝 Visual Studio Code | Writing and Managing SQL Scripts |
| 🌐 GitHub | Version Control & Project Documentation |

---

# 📚 SQL Concepts Covered

This module demonstrates the following SQL concepts:

| Concept | Description |
|----------|-------------|
| 🏗️ CREATE TABLE | Creating the OrderDetails table |
| 🔑 PRIMARY KEY | Unique identification for every order detail |
| 🔗 FOREIGN KEY | Establishing relationships with Orders and Products tables |
| ➕ INSERT INTO | Adding order detail records |
| 🔍 SELECT | Retrieving order details |
| 🎯 WHERE Clause | Filtering records for a specific order |
| ➕ SUM() | Calculating total revenue |
| 📊 COUNT() | Counting product sales |
| 📂 GROUP BY | Grouping products for analysis |
| 📈 ORDER BY | Sorting products based on order frequency |
| 🔝 LIMIT | Displaying the Top 3 ordered products |

---

# 🎯 Learning Outcomes

After completing this module, you will be able to:

- ✅ Design an OrderDetails table using SQL
- ✅ Apply Primary Key and Foreign Key constraints
- ✅ Build relationships between multiple tables
- ✅ Insert order detail records
- ✅ Retrieve order information using SQL queries
- ✅ Calculate total revenue using **SUM()**
- ✅ Count product sales using **COUNT()**
- ✅ Group records using **GROUP BY**
- ✅ Identify the most ordered products
- ✅ Perform sales analysis using SQL aggregate functions

---

# 💡 Future Enhancements

This OrderDetails module can be enhanced by adding:

- 📦 Product Discount Calculation
- 🧾 Tax (GST) Calculation
- 💰 Automatic SubTotal Calculation
- 🎁 Coupon & Promotional Discounts
- 📊 Product-wise Revenue Reports
- 📈 Monthly Sales Analysis
- 🛒 Best Selling Product Dashboard
- 📉 Low Demand Product Reports

These enhancements can transform the project into a complete sales and order analytics system suitable for real-world business environments.

---

# 📄 License

This project is created for **educational and learning purposes**.

You are free to:

- 📖 Learn from the project
- ✏️ Modify the SQL scripts
- 💻 Practice SQL concepts
- 🎓 Use it for academic and personal learning

---

# 👩‍💻 Author

<div align="center">

## Sneha Gupta

### 🎓 BBA Student | Aspiring Data Analyst | SQL Learner

> *"Well-structured order details transform raw transactions into meaningful business insights."*

**📚 Skills**

SQL • MySQL • Python • Excel • Power BI • Data Analysis

</div>

---

# 🙏 Acknowledgements

Special thanks to the following learning resources:

- 📘 MySQL Official Documentation
- 📗 W3Schools SQL Tutorial
- 📙 GeeksforGeeks SQL Guide
- 📕 SQLBolt Interactive Lessons
- 📖 ChatGPT for SQL Learning & Documentation

---

<div align="center">

## ⭐ If you found this project useful, consider giving it a Star on GitHub!

### Thank you for exploring the **Order Details Management Database** project. 😊

**Made with ❤️ using SQL & MySQL**

</div>
