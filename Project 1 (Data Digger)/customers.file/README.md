<div align="center">

# 🗄️ Customer Management Database
### *A Structured SQL Database for Customer Information Management Using MySQL*

[![MySQL](https://img.shields.io/badge/MySQL-8.0+-4479A1?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)
[![SQL](https://img.shields.io/badge/SQL-Database%20Management-F29111?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)
[![CRUD](https://img.shields.io/badge/CRUD-Create%20Read%20Update%20Delete-4CAF50?style=for-the-badge)]()
[![Database](https://img.shields.io/badge/Relational-Database-blue?style=for-the-badge)]()

<br/>

> *"A well-designed database is the foundation of every successful application."*

</div>

---

# 📋 Table of Contents

- [📌 Overview](#-overview)
- [🎯 Problem Statement](#-problem-statement)
- [✨ Key Features](#-key-features)
- [🏗️ Project Structure](#️-project-structure)
- [🗂️ Database Schema](#️-database-schema)
- [🔄 Project Workflow](#-project-workflow)
- [👤 Customers Table Structure](#-customers-table-structure)
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

The **Customers.sql** module is the first and most important component of the **DataDigger Database Management System**.

This module is responsible for storing and managing customer information using SQL. It demonstrates the implementation of a relational database table with a **Primary Key**, data insertion, retrieval, updating, deletion, and filtering operations.

The project provides hands-on practice with fundamental SQL commands that are widely used in database management systems.

---

# 🎯 Problem Statement

> **Objective:** Design and implement a customer database that efficiently stores customer information and performs basic CRUD operations using SQL.

The system should allow users to:

- Store customer details in a structured table.
- Assign a unique Customer ID for every customer.
- Retrieve complete customer information.
- Update customer records whenever required.
- Delete customer records safely.
- Search customers based on specific conditions.

This project helps beginners understand the fundamentals of relational databases and SQL query execution.

---

# ✨ Key Features

| Feature | Description |
|---------|-------------|
| 👤 Customer Information Management | Stores customer details in a structured format |
| 🔑 Primary Key | Every customer has a unique Customer ID |
| ➕ Insert Records | Add new customer information |
| 🔍 Retrieve Records | Display all or selected customer details |
| ✏️ Update Records | Modify customer address or other information |
| ❌ Delete Records | Remove customer records safely |
| 🎯 Conditional Search | Retrieve customers using WHERE clause |
| 📊 Structured Database | Organized relational table for easy management |

---

# 🏗️ Project Structure

```text
📦 DataDigger Database
│
├── 📄 customers.sql      ← Customer Table Creation
├── 📄 README.md          ← Documentation
```

---

# 🗂️ Database Schema

```
Database
    │
    ▼
Customers Table
    │
    ├── cust_id (Primary Key)
    ├── Name
    ├── Email
    └── Address
```

The **Customers** table acts as the parent table for the database because other tables (such as Orders) use the Customer ID as a **Foreign Key** reference.

---

# 🔄 Project Workflow

```text
Start
   │
   ▼
Create Database
   │
   ▼
Create Customers Table
   │
   ▼
Insert Customer Records
   │
   ▼
Retrieve Customer Details
   │
   ▼
Update Customer Information
   │
   ▼
Delete Customer Records
   │
   ▼
Search Customer by Name
   │
   ▼
End
```

---

# 👤 Customers Table Structure

The **Customers** table stores all customer-related information required by the database system.

It acts as the **parent table** because other tables (such as Orders) use the **Customer ID** as a Foreign Key.

---

## 📋 Table Design

| Column Name | Data Type | Constraint | Description |
|-------------|----------|------------|-------------|
| `cust_id` | INT | PRIMARY KEY | Unique ID assigned to every customer |
| `Name` | VARCHAR(100) | NOT NULL | Customer's full name |
| `Email` | VARCHAR(100) | NOT NULL | Customer's email address |
| `Address` | VARCHAR(150) | NOT NULL | Customer's residential address |

---

## 🔑 Primary Key

```sql
cust_id INT PRIMARY KEY
```

### Why Primary Key?

- Ensures every customer has a unique identity.
- Prevents duplicate customer IDs.
- Improves searching speed.
- Used as a reference in other database tables.

---

# 🛠️ SQL Operations Performed

This module demonstrates all basic **CRUD Operations**.

| Operation | SQL Command | Purpose |
|-----------|------------|----------|
| Create | CREATE TABLE | Creates Customers table |
| Insert | INSERT INTO | Adds customer records |
| Read | SELECT | Retrieves customer information |
| Update | UPDATE | Modifies customer data |
| Delete | DELETE | Removes customer records |

---

## 1️⃣ Create Table

Creates the Customers table with all required fields.

```sql
CREATE TABLE Customers(
cust_id INT PRIMARY KEY,
Name VARCHAR(100),
Email VARCHAR(100),
Address VARCHAR(150)
);
```

---

## 2️⃣ Insert Records

Stores customer information inside the table.

Example:

```sql
INSERT INTO Customers
VALUES
(1,'Rahul','rahul@gmail.com','Surat');
```

This operation is repeated to insert multiple customer records.

---

## 3️⃣ Retrieve Records

Displays customer information stored inside the database.

Example:

```sql
SELECT * FROM Customers;
```

This retrieves every record from the Customers table.

---

## 4️⃣ Update Records

Updates existing customer information.

Example:

```sql
UPDATE Customers
SET Address='Vesu'
WHERE cust_id=2;
```

Only the selected customer's address gets updated.

---

## 5️⃣ Delete Records

Deletes a customer using Customer ID.

Example:

```sql
DELETE FROM Customers
WHERE cust_id=1;
```

The specified customer record is permanently removed.

---

## 🔍 Conditional Search

Customers can also be searched using conditions.

Example:

```sql
SELECT *
FROM Customers
WHERE Name='Alice';
```

Only records matching the specified condition are displayed.

---

# 💡 SQL Concepts Used

| SQL Concept | Purpose |
|------------|---------|
| CREATE TABLE | Create database table |
| PRIMARY KEY | Unique customer identification |
| INSERT INTO | Add records |
| SELECT | Retrieve data |
| WHERE | Apply conditions |
| UPDATE | Modify records |
| DELETE | Remove records |

---

# 💻 SQL Queries

The **Customers.sql** module includes the following SQL operations to demonstrate complete customer management.

---

## 🔹 Query 1 — Insert Customer Records

**Objective:** Insert sample customer records into the Customers table.

```sql
INSERT INTO Customers
VALUES
(1,'Rahul','rahul@gmail.com','Surat'),
(2,'Alice','alice@gmail.com','Ahmedabad'),
(3,'John','john@gmail.com','Rajkot'),
(4,'Priya','priya@gmail.com','Vadodara'),
(5,'Rohan','rohan@gmail.com','Mumbai');
```

### 📖 Explanation

- Adds new customer records into the database.
- Each customer receives a unique **Customer ID**.
- Stores customer name, email, and address.

---

## 🔹 Query 2 — Retrieve All Customer Details

**Objective:** Display every customer stored in the table.

```sql
SELECT *
FROM Customers;
```

### 📖 Explanation

- Retrieves all rows.
- Displays every column.
- Useful for viewing the complete customer database.

---

## 🔹 Query 3 — Update Customer Address

**Objective:** Modify the address of an existing customer.

```sql
UPDATE Customers
SET Address='Vesu'
WHERE cust_id=2;
```

### 📖 Explanation

- Updates only one customer.
- Uses the **WHERE** clause to identify the correct record.
- Prevents unwanted modification of other rows.

---

## 🔹 Query 4 — Delete Customer by ID

**Objective:** Remove a customer record.

```sql
DELETE FROM Customers
WHERE cust_id=1;
```

### 📖 Explanation

- Deletes only the selected customer.
- Uses the Primary Key for accurate deletion.

---

## 🔹 Query 5 — Display Customer Named Alice

**Objective:** Retrieve customer information using a condition.

```sql
SELECT *
FROM Customers
WHERE Name='Alice';
```

### 📖 Explanation

- Demonstrates filtering using the **WHERE** clause.
- Returns only the matching customer record.

---

# 📊 Results & Insights

After executing all SQL statements, the following results are achieved:

| Result | Description |
|---------|-------------|
| ✅ Table Created | Customers table successfully created |
| ✅ Records Inserted | Customer information stored correctly |
| ✅ Data Retrieved | Customer records displayed successfully |
| ✅ Record Updated | Address modified without affecting other records |
| ✅ Record Deleted | Selected customer removed successfully |
| ✅ Conditional Search | Specific customer retrieved using WHERE clause |

---

# 🌍 Real-World Applications

The Customers table can be used in many real-world systems, including:

- 🛒 E-Commerce Websites
- 🏦 Banking Systems
- 🏥 Hospital Management
- 🎓 Student Management
- 🏢 CRM (Customer Relationship Management)
- 📦 Inventory & Billing Systems
- 🛍️ Retail Store Databases

---

# 🏆 Advantages

| Advantage | Description |
|-----------|-------------|
| 🚀 Fast Data Retrieval | SQL retrieves customer data efficiently |
| 🔒 Data Integrity | Primary Key prevents duplicate records |
| 📊 Organized Database | Customer information remains structured |
| 🔍 Easy Searching | WHERE clause enables quick filtering |
| ✏️ Easy Maintenance | Records can be updated anytime |
| ❌ Safe Deletion | Specific records can be removed accurately |
| 📈 Scalable Design | Suitable for both small and large databases |
| 💼 Industry Standard | Uses professional SQL practices followed in real applications |

---

# 🛠️ Tech Stack

| Technology | Purpose |
|------------|---------|
| 🗄️ MySQL | Relational Database Management System |
| 💻 SQL | Database Query Language |
| 🖥️ MySQL Command Line Client | SQL Query Execution |
| 📄 VS Code | SQL Script Writing |
| 📚 GitHub | Project Version Control & Documentation |

---

# 📚 SQL Concepts Covered

This project demonstrates the following SQL concepts:

| Concept | Description |
|----------|-------------|
| 🏗️ Database Creation | Creating a relational database |
| 📋 Table Creation | Designing structured database tables |
| 🔑 Primary Key | Ensuring unique customer identification |
| ➕ INSERT INTO | Adding new customer records |
| 🔍 SELECT | Retrieving customer information |
| 🎯 WHERE Clause | Filtering records based on conditions |
| ✏️ UPDATE | Modifying existing records |
| ❌ DELETE | Removing records from the table |
| 📊 CRUD Operations | Complete database management |

---

# 📈 Learning Outcomes

After completing this module, the following SQL skills are achieved:

- ✅ Creating relational database tables
- ✅ Designing a table using appropriate data types
- ✅ Understanding the importance of Primary Keys
- ✅ Inserting multiple records into a table
- ✅ Retrieving complete and filtered data
- ✅ Updating existing records safely
- ✅ Deleting records using conditions
- ✅ Performing complete CRUD operations
- ✅ Building a strong foundation in SQL database management

---

# 📄 License

This project is created for **educational and learning purposes**.

You are free to:

- 📖 Learn from the project
- ✏️ Modify the SQL scripts
- 💻 Practice SQL concepts
- 🎓 Use it for academic purposes

---

# 👩‍💻 Author

<div align="center">

## Sneha Gupta

### 🎓 BBA Student | Aspiring Data Analyst | SQL Learner

> *"Every database begins with a well-designed table, and every successful application begins with a strong database."*

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

### Thank you for visiting this project. 😊

**Made with ❤️ using SQL & MySQL**

</div>
