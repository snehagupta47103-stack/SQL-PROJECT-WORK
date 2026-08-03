<div align="center">

# 🛍️ Products Management Database
### *A Structured SQL Module for Managing Product Inventory Using MySQL*

[![MySQL](https://img.shields.io/badge/MySQL-8.0+-4479A1?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)
[![SQL](https://img.shields.io/badge/SQL-Database%20Management-F29111?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)
[![CRUD](https://img.shields.io/badge/CRUD-Create%20Read%20Update%20Delete-4CAF50?style=for-the-badge)]()
[![Inventory](https://img.shields.io/badge/Inventory-Management-blue?style=for-the-badge)]()

<br/>

> *"Efficient inventory management begins with a well-structured product database."*

</div>

---

# 📋 Table of Contents

- [📌 Overview](#-overview)
- [🎯 Problem Statement](#-problem-statement)
- [✨ Key Features](#-key-features)
- [🏗️ Project Structure](#️-project-structure)
- [🗂️ Database Schema](#️-database-schema)
- [🔄 Project Workflow](#-project-workflow)
- [🛍️ Products Table Structure](#-products-table-structure)
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

The **Products.sql** module is the third core component of the **DataDigger Database Management System**.

This module is responsible for storing and managing product information used in the database. It maintains details such as product name, price, and stock quantity, allowing businesses to efficiently organize inventory and perform product-related operations.

The Products table demonstrates the implementation of SQL CRUD operations along with sorting, filtering, and aggregate functions commonly used in inventory management systems.

---

# 🎯 Problem Statement

> **Objective:** Design and implement a Products table that stores product information and supports inventory management using SQL.

The system should allow users to:

- Store product details in a structured format.
- Assign a unique Product ID for every product.
- Manage product prices and stock quantities.
- Retrieve products based on different conditions.
- Update product prices.
- Delete products that are out of stock.
- Analyze product prices using SQL Aggregate Functions.

This module introduces essential SQL concepts used in real-world inventory and product management systems.

---

# ✨ Key Features

| Feature | Description |
|---------|-------------|
| 🛍️ Product Management | Stores complete product information |
| 🔑 Primary Key | Every product has a unique Product ID |
| ➕ Insert Products | Add new products to inventory |
| 🔍 Retrieve Products | Display product information |
| ✏️ Update Price | Modify product prices |
| ❌ Delete Products | Remove out-of-stock products |
| 📦 Stock Management | Track available product quantity |
| 📊 Aggregate Functions | Find highest and lowest priced products |
| 🔄 Sorting & Filtering | Organize products based on price and stock |

---

# 🏗️ Project Structure

```text
📦 DataDigger Database
│
├── 📄 products.sql
├── 📄 README.md
```

---

# 🗂️ Database Schema

```text
Products Table
│
├── ProductID (Primary Key)
├── ProductName
├── Price
└── Stock
```

The **Products** table stores all product information required for inventory management.

Each product is assigned a unique **ProductID**, which helps maintain accurate product records and can be referenced by other tables such as **OrderDetails**.

---

# 🔄 Project Workflow

```text
Start
   │
   ▼
Create Products Table
   │
   ▼
Define Primary Key
   │
   ▼
Insert Sample Product Records
   │
   ▼
Retrieve Product Details
   │
   ▼
Sort Products by Price
   │
   ▼
Update Product Price
   │
   ▼
Delete Out-of-Stock Products
   │
   ▼
Filter Products by Price Range
   │
   ▼
Analyze Product Prices
   │
   ▼
End
```

---

# 🛍️ Products Table Structure

The **Products** table stores all product-related information required for inventory management.

Each product is assigned a unique **ProductID**, ensuring accurate identification and efficient inventory tracking.

---

## 📋 Table Design

| Column Name | Data Type | Constraint | Description |
|-------------|-----------|------------|-------------|
| `ProductID` | INT | PRIMARY KEY | Unique Product Identifier |
| `ProductName` | VARCHAR(100) | NOT NULL | Name of the Product |
| `Price` | INT | NOT NULL | Price of the Product |
| `Stock` | INT | NOT NULL | Available Quantity in Stock |

---

# 🔑 Primary Key

```sql
ProductID INT PRIMARY KEY
```

### Why Primary Key?

- Provides a unique identity for every product.
- Prevents duplicate Product IDs.
- Improves search and retrieval speed.
- Helps maintain accurate inventory records.

---

# 🛠️ SQL Operations Performed

This module demonstrates complete **CRUD Operations** along with filtering, sorting, and aggregate functions.

| Operation | SQL Command | Purpose |
|-----------|------------|----------|
| Create | CREATE TABLE | Creates the Products table |
| Insert | INSERT INTO | Adds product records |
| Read | SELECT | Retrieves product information |
| Update | UPDATE | Modifies product price |
| Delete | DELETE | Removes out-of-stock products |
| Sort | ORDER BY | Sorts products by price |
| Filter | WHERE / BETWEEN | Retrieves products based on conditions |
| Aggregate | MAX(), MIN() | Finds highest and lowest priced products |

---

## 1️⃣ Create Products Table

Creates the Products table with all required fields.

```sql
CREATE TABLE Products(
ProductID INT PRIMARY KEY,
ProductName VARCHAR(100),
Price INT,
Stock INT
);
```

---

## 2️⃣ Insert Sample Product Records

Stores product information inside the database.

Example:

```sql
INSERT INTO Products
VALUES
(1,'Laptop',55000,10);
```

Multiple product records can be inserted for inventory management.

---

## 3️⃣ Retrieve Product Records

Displays all products stored in the database.

Example:

```sql
SELECT * FROM Products;
```

This query retrieves every product available in the inventory.

---

## 4️⃣ Sort Products by Price (Descending)

Displays products from the highest price to the lowest price.

Example:

```sql
SELECT *
FROM Products
ORDER BY Price DESC;
```

This helps identify expensive products quickly.

---

## 5️⃣ Update Product Price

Updates the price of a specific product.

Example:

```sql
UPDATE Products
SET Price = 25000
WHERE ProductID = 2;
```

Only the selected product's price is modified.

---

## 6️⃣ Delete an Out-of-Stock Product

Deletes a product whose stock quantity is **0**.

### SQL Query

```sql
DELETE FROM Products
WHERE Stock = 0;
```

### 📖 Explanation

- Removes products that are no longer available.
- Keeps the inventory clean and up to date.
- Demonstrates the use of the **DELETE** statement with the **WHERE** clause.

---

## 7️⃣ Retrieve Products Within a Price Range

Displays all products whose price is between **₹500 and ₹2000**.

### SQL Query

```sql
SELECT *
FROM Products
WHERE Price BETWEEN 500 AND 2000;
```

### 📖 Explanation

- Uses the **BETWEEN** operator.
- Retrieves only those products whose prices fall within the specified range.
- Helpful for price-based product filtering.

---

## 8️⃣ Find the Most Expensive Product

Displays the highest product price.

### SQL Query

```sql
SELECT MAX(Price)
FROM Products;
```

### 📖 Explanation

- Uses the **MAX()** aggregate function.
- Returns the highest value from the **Price** column.
- Useful for identifying premium products.

---

## 9️⃣ Find the Cheapest Product

Displays the lowest product price.

### SQL Query

```sql
SELECT MIN(Price)
FROM Products;
```

### 📖 Explanation

- Uses the **MIN()** aggregate function.
- Returns the lowest value from the **Price** column.
- Useful for identifying budget-friendly products.

---

# 📊 Results & Insights

After executing all SQL queries, the following outcomes are achieved:

| Result | Description |
|---------|-------------|
| ✅ Products Table Created | Product table created successfully |
| ✅ Product Records Inserted | Sample inventory stored successfully |
| ✅ Products Retrieved | Product information displayed correctly |
| ✅ Products Sorted | Products arranged from highest to lowest price |
| ✅ Product Updated | Product price modified successfully |
| ✅ Out-of-Stock Products Deleted | Inventory cleaned by removing unavailable products |
| ✅ Price Range Filter Applied | Products between ₹500 and ₹2000 retrieved successfully |
| ✅ Price Analysis Completed | Highest and lowest product prices identified |

---

# 🌍 Real-World Applications

The Products table is widely used in:

- 🛒 E-Commerce Platforms
- 🏬 Retail Store Management
- 📦 Inventory Management Systems
- 🏭 Warehouse Management
- 💊 Pharmacy Management
- 🛍️ Supermarket Billing Systems
- 📱 Electronics Store Databases
- 📚 Bookstore Inventory Systems

---

# 🏆 Advantages

| Advantage | Description |
|-----------|-------------|
| 🚀 Efficient Inventory Management | Organizes product information systematically |
| 🔑 Unique Product Identification | Primary Key prevents duplicate records |
| 📦 Stock Monitoring | Tracks product availability |
| 💰 Price Management | Easily updates product prices |
| 🔍 Fast Product Search | Retrieves products using SQL conditions |
| 📊 Inventory Analysis | Aggregate functions help analyze pricing |
| 🧹 Database Maintenance | Removes unavailable products efficiently |
| 💼 Industry-Oriented Design | Similar to real-world inventory databases |

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
| 🏗️ CREATE TABLE | Creating the Products table |
| 🔑 PRIMARY KEY | Unique identification for every product |
| ➕ INSERT INTO | Adding new product records |
| 🔍 SELECT | Retrieving product information |
| 🎯 WHERE Clause | Filtering product records |
| 🔄 ORDER BY | Sorting products by price |
| 📌 BETWEEN | Retrieving products within a price range |
| ✏️ UPDATE | Updating product prices |
| ❌ DELETE | Removing out-of-stock products |
| 📊 Aggregate Functions | Using MAX() and MIN() for product price analysis |

---

# 🎯 Learning Outcomes

After completing this module, you will be able to:

- ✅ Design a Products table using SQL
- ✅ Apply Primary Key constraints
- ✅ Insert multiple product records
- ✅ Retrieve product information using SQL queries
- ✅ Sort products using ORDER BY
- ✅ Filter products using WHERE and BETWEEN
- ✅ Update existing product prices
- ✅ Delete products based on stock availability
- ✅ Analyze product prices using Aggregate Functions
- ✅ Perform complete CRUD operations on an inventory table

---

# 💡 Future Enhancements

This Products module can be expanded by adding:

- 📂 Product Categories
- 🏷️ Brand Information
- 🖼️ Product Images
- ⭐ Product Ratings & Reviews
- 🎁 Discount Percentage
- 📦 Supplier Details
- 📊 Inventory Reports
- 📈 Low Stock Alerts

These enhancements can transform the project into a complete inventory management system suitable for real-world business applications.

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

> *"An organized inventory is the backbone of every successful business."*

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

### Thank you for exploring the **Products Management Database** project. 😊

**Made with ❤️ using SQL & MySQL**

</div>
