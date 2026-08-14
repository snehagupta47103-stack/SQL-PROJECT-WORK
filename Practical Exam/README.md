<div align="center">

# 📚 SLMS — Library Management System

### *SQL Database Management & Library Data Analysis Project*

[![MySQL](https://img.shields.io/badge/MySQL-8.0%2B-4479A1?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)
[![SQL](https://img.shields.io/badge/SQL-Database%20Management-FF6F00?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)
[![CRUD](https://img.shields.io/badge/CRUD-Operations-4CAF50?style=for-the-badge)](https://www.mysql.com/)
[![Joins](https://img.shields.io/badge/SQL-JOIN%20Operations-9C27B0?style=for-the-badge)](https://www.mysql.com/)
[![Window Functions](https://img.shields.io/badge/Window%20Functions-RANK%20%7C%20AVG-FF9800?style=for-the-badge)](https://www.mysql.com/)

<br>

> *"Transforming library data into meaningful information using SQL."*

</div>

---

## 📋 Table of Contents

- [📌 Overview](#-overview)
- [🎯 Project Objective](#-project-objective)
- [✨ Key Features](#-key-features)
- [🏗️ Database Structure](#️-database-structure)
- [🔗 Table Relationships](#-table-relationships)
- [🔄 Project Workflow](#-project-workflow)
- [🧩 SQL Operations Covered](#-sql-operations-covered)
- [📝 Q-1 — CRUD Operations](#-q-1--crud-operations)
- [🔍 Q-2 — SQL Clauses](#-q-2--sql-clauses)
- [⚙️ Q-3 — SQL Operators](#️-q-3--sql-operators)
- [📊 Q-4 — Sorting & Grouping](#-q-4--sorting--grouping)
- [🧮 Q-5 — Aggregate Functions](#-q-5--aggregate-functions)
- [🔑 Q-6 — Primary & Foreign Keys](#-q-6--primary--foreign-keys)
- [🔗 Q-7 — JOIN Operations](#-q-7--join-operations)
- [🔎 Q-8 — Subqueries](#-q-8--subqueries)
- [📅 Q-9 — Date & Time Functions](#-q-9--date--time-functions)
- [🔤 Q-10 — String Manipulation](#-q-10--string-manipulation)
- [📈 Q-11 — Window Functions](#-q-11--window-functions)
- [🏷️ Q-12 — CASE Expressions](#-q-12--case-expressions)
- [🛠️ Tech Stack](#️-tech-stack)
- [📈 Results & Learning Outcomes](#-results--learning-outcomes)
- [🏆 Advantages](#-advantages)
- [🚀 How to Run](#-how-to-run)
- [📄 License](#-license)
- [👤 Author](#-author)
- [🙏 Acknowledgements](#-acknowledgements)

---

## 📌 Overview

**SLMS (Library Management System)** is a MySQL-based database project designed to manage and analyze library-related information.

The database stores information about:

- 📚 **Books** — Book title, author, category, ISBN, publication date, price, and available copies.
- ✍️ **Authors** — Author names and email addresses.
- 👥 **Members** — Library member information, contact details, and membership dates.
- 🔄 **Transactions** — Book borrowing and returning information, including fine amounts.

The project demonstrates practical SQL concepts through **CRUD operations, SQL clauses, operators, sorting, grouping, aggregate functions, primary and foreign keys, JOINs, subqueries, date functions, string functions, window functions, and CASE expressions**.

---

## 🎯 Project Objective

> **Objective:** Design and analyze a relational Library Management System database using MySQL and demonstrate practical SQL operations for managing, transforming, and analyzing library data.

The project focuses on:

| 📂 Area | 🔍 Purpose |
|---|---|
| 📚 Book Management | Store and manage book information |
| ✍️ Author Management | Maintain author details |
| 👥 Member Management | Store library member information |
| 🔄 Transaction Management | Track book borrowing and returning |
| 🧩 CRUD Operations | Insert, update, delete, and retrieve records |
| 🔍 SQL Clauses | Filter, sort, group, and limit data |
| ⚙️ SQL Operators | Apply logical conditions using AND, OR, and NOT |
| 🧮 Aggregate Functions | Calculate counts, averages, sums, and borrowing statistics |
| 🔗 JOINs | Combine related tables |
| 🔎 Subqueries | Retrieve data using nested queries |
| 📅 Date Functions | Analyze publication and borrowing dates |
| 🔤 String Functions | Transform and format text |
| 📈 Window Functions | Perform ranking, cumulative, and moving calculations |
| 🏷️ CASE Expressions | Categorize books and member activity |

---

## ✨ Key Features

| Feature | Description |
|---|---|
| 🗄️ **Database Creation** | Creates the `SLMS` database |
| 📚 **Book Management** | Stores book details and availability |
| ✍️ **Author Management** | Stores author names and unique email addresses |
| 👥 **Member Management** | Stores member details and membership dates |
| 🔄 **Transaction Tracking** | Records borrowing, returning, and fines |
| ➕ **INSERT Operations** | Adds new books, authors, and members |
| ✏️ **UPDATE Operations** | Updates available book copies |
| 🗑️ **DELETE Operations** | Removes members based on transaction activity |
| 🔍 **WHERE Clause** | Filters records based on conditions |
| 📊 **GROUP BY & HAVING** | Groups and filters aggregated data |
| 🔢 **LIMIT** | Restricts the number of returned records |
| ⚙️ **AND / OR / NOT** | Applies logical conditions |
| 🔗 **JOIN Operations** | Combines related tables |
| 🔎 **Subqueries** | Retrieves data using nested queries |
| 📅 **Date Functions** | Uses `YEAR()`, `DATEDIFF()`, and `DATE_FORMAT()` |
| 🔤 **String Functions** | Uses `UPPER()`, `TRIM()`, and `REPLACE()` |
| 📈 **Window Functions** | Uses `RANK()`, cumulative counts, and moving averages |
| 🏷️ **CASE Expressions** | Categorizes membership status and books |

---

## 🏗️ Database Structure

```text
📦 SLMS — Library Management System
│
├── 📚 books
│   ├── book_id              ← Primary Key
│   ├── title
│   ├── author_id            ← Foreign Key
│   ├── category
│   ├── isbn
│   ├── published_date
│   ├── price
│   └── available_copies
│
├── ✍️ authors
│   ├── author_id            ← Primary Key
│   ├── name
│   └── email                ← UNIQUE
│
├── 👥 members
│   ├── member_id            ← Primary Key
│   ├── name
│   ├── email                ← UNIQUE
│   ├── phone_number
│   └── membership_date
│
└── 🔄 transactions
    ├── transaction_id       ← Primary Key
    ├── member_id            ← Foreign Key
    ├── book_id              ← Foreign Key
    ├── borrow_date
    ├── return_date
    └── fine_amount
```

---

## 🔗 Table Relationships

The **SLMS (Library Management System)** database contains relationships between the **Authors, Books, Members, and Transactions** tables.

### 📚 Authors → Books

The `Authors` and `Books` tables are connected using the common field:

```text
author_id
```

```text
┌──────────────────────┐
│       AUTHORS        │
├──────────────────────┤
│ author_id            │
│ name                 │
│ email                │
└──────────┬───────────┘
           │
           │ Primary Key
           │
           ▼
┌──────────────────────┐
│        BOOKS         │
├──────────────────────┤
│ book_id              │
│ title                │
│ author_id            │ ← Foreign Key
│ category             │
│ isbn                 │
│ published_date       │
│ price                │
│ available_copies     │
└──────────────────────┘
```

The `books.author_id` field references `authors.author_id`.

This relationship allows book and author information to be analyzed together using SQL `JOIN` operations.

---

### 👥 Members → Transactions

The `Members` and `Transactions` tables are connected using:

```text
member_id
```

```text
┌──────────────────────┐
│       MEMBERS        │
├──────────────────────┤
│ member_id            │ ← Primary Key
│ name                 │
│ email                │
│ phone_number         │
│ membership_date      │
└──────────┬───────────┘
           │
           │ Primary Key
           ▼
┌──────────────────────┐
│    TRANSACTIONS      │
├──────────────────────┤
│ transaction_id       │ ← Primary Key
│ member_id            │ ← Foreign Key
│ book_id              │ ← Foreign Key
│ borrow_date          │
│ return_date          │
│ fine_amount          │
└──────────────────────┘
```

The `transactions.member_id` field references `members.member_id`.

This relationship allows the project to analyze member borrowing activity and transaction history.

---

### 📚 Books → Transactions

The `Books` and `Transactions` tables are connected using:

```text
book_id
```

```text
┌──────────────────────┐
│        BOOKS         │
├──────────────────────┤
│ book_id              │ ← Primary Key
│ title                │
│ author_id            │
│ category             │
│ isbn                 │
│ published_date       │
│ price                │
│ available_copies     │
└──────────┬───────────┘
           │
           │ Primary Key
           ▼
┌──────────────────────┐
│    TRANSACTIONS      │
├──────────────────────┤
│ transaction_id       │
│ member_id            │
│ book_id              │ ← Foreign Key
│ borrow_date          │
│ return_date          │
│ fine_amount          │
└──────────────────────┘
```

The `transactions.book_id` field references `books.book_id`.

This relationship allows the project to determine which books were borrowed, how frequently they were borrowed, and which books are associated with particular transactions.

---

## 🔄 Project Workflow

```text
                         🚀 PROJECT START
                               │
                               ▼
                    ┌──────────────────────┐
                    │    Create SLMS DB    │
                    └──────────┬───────────┘
                               │
                               ▼
                    ┌──────────────────────┐
                    │   Create Authors     │
                    │       Table          │
                    └──────────┬───────────┘
                               │
                               ▼
                    ┌──────────────────────┐
                    │ Insert Author        │
                    │ Records              │
                    └──────────┬───────────┘
                               │
                               ▼
                    ┌──────────────────────┐
                    │    Create Books      │
                    │       Table          │
                    └──────────┬───────────┘
                               │
                               ▼
                    ┌──────────────────────┐
                    │ Insert Book Records  │
                    └──────────┬───────────┘
                               │
                               ▼
                    ┌──────────────────────┐
                    │   Create Members     │
                    │       Table          │
                    └──────────┬───────────┘
                               │
                               ▼
                    ┌──────────────────────┐
                    │ Insert Member        │
                    │ Records              │
                    └──────────┬───────────┘
                               │
                               ▼
                    ┌──────────────────────┐
                    │ Create Transactions  │
                    │       Table          │
                    └──────────┬───────────┘
                               │
                               ▼
                    ┌──────────────────────┐
                    │ Insert Transaction   │
                    │ Records              │
                    └──────────┬───────────┘
                               │
                               ▼
                    ┌──────────────────────┐
                    │ Execute Q-1 to Q-12  │
                    │   SQL Operations     │
                    └──────────┬───────────┘
                               │
                               ▼
                         📊 SQL RESULTS
```

---

## 🧩 SQL Operations Covered

```text
                         📚 SLMS SQL PRACTICAL
                                  │
             ┌────────────────────┼────────────────────┐
             │                    │                    │
             ▼                    ▼                    ▼
          📝 CRUD            🔍 SQL CLAUSES       ⚙️ OPERATORS
             │                    │                    │
       INSERT / UPDATE      WHERE / ORDER BY       AND / OR / NOT
           DELETE              LIMIT / HAVING
             │                    │                    │
             └────────────────────┼────────────────────┘
                                  │
                                  ▼
                       📊 SORTING & GROUPING
                                  │
                                  ▼
                       🧮 AGGREGATE FUNCTIONS
                                  │
                                  ▼
                     🔑 PRIMARY & FOREIGN KEYS
                                  │
                                  ▼
                           🔗 JOIN OPERATIONS
                                  │
                                  ▼
                            🔎 SUBQUERIES
                                  │
                                  ▼
                       📅 DATE & TIME FUNCTIONS
                                  │
                                  ▼
                        🔤 STRING FUNCTIONS
                                  │
                                  ▼
                         📈 WINDOW FUNCTIONS
                                  │
                                  ▼
                          🏷️ CASE EXPRESSIONS
                                  │
                                  ▼
                           📊 SQL INSIGHTS
```

---

# 👥 Part A — Customer & Order Analysis

## 🔗 1. INNER JOIN

The project demonstrates combining related records using an `INNER JOIN`.

```sql
SELECT *
FROM books b
INNER JOIN authors a
ON b.author_id = a.author_id;
```

**Purpose:** Returns records where a book has a matching author.

---

## ⬅️ 2. LEFT JOIN

```sql
SELECT *
FROM members m
LEFT JOIN transactions t
ON m.member_id = t.member_id;
```

**Purpose:** Returns all members along with their matching transaction records where available.

---

## ➡️ 3. RIGHT JOIN

```sql
SELECT *
FROM transactions t
RIGHT JOIN books b
ON t.book_id = b.book_id
WHERE t.book_id IS NULL;
```

**Purpose:** Demonstrates retrieving books that do not have matching transaction records.

---

## 🔄 4. Combining JOIN Results

The project demonstrates combining `LEFT JOIN` and `RIGHT JOIN` results using `UNION`.

```sql
SELECT *
FROM members m
LEFT JOIN transactions t
ON m.member_id = t.member_id

UNION

SELECT *
FROM members m
RIGHT JOIN transactions t
ON m.member_id = t.member_id;
```

**Purpose:** Combines the results of both join directions into a single result set.

---

# 👨‍💼 Part B — Transaction & Member Analysis

## 👥 5. Members with Borrowing Activity

The project uses transaction information to analyze member borrowing activity.

```sql
SELECT m.member_id,
       m.name,
       COUNT(t.transaction_id) AS books_borrowed
FROM members m
LEFT JOIN transactions t
ON m.member_id = t.member_id
GROUP BY m.member_id, m.name;
```

**Purpose:** Calculates how many transactions are associated with each member.

---

# 📅 Part C — Date & Time Functions

## 📆 6. Extract Publication Year

```sql
SELECT YEAR(published_date) AS publication_year,
       COUNT(*) AS book_count
FROM books
GROUP BY YEAR(published_date);
```

**Purpose:** Groups books according to their publication year.

### Functions Used

| Function | Purpose |
|---|---|
| `YEAR()` | Extracts the year from a date |
| `COUNT()` | Counts records |

---

## ⏳ 7. Calculate Borrowing Duration

```sql
SELECT *,
       DATEDIFF(return_date, borrow_date) AS days_borrowed
FROM transactions;
```

**Purpose:** Calculates the number of days between the borrowing and return dates.

---

## 🗓️ 8. Format Borrow Date

```sql
SELECT *,
       DATE_FORMAT(borrow_date, '%d-%m-%Y') AS formatted_date
FROM transactions;
```

**Purpose:** Converts the borrow date into a `DD-MM-YYYY` display format.

---

# 🔤 Part D — String Functions

## 🔠 9. Convert Book Titles to Uppercase

```sql
SELECT UPPER(title) AS Uppercase_Title
FROM books;
```

**Purpose:** Converts book titles into uppercase letters.

---

## ✂️ 10. Trim Author Names

```sql
SELECT TRIM(name) AS Trimmed_Name
FROM authors;
```

**Purpose:** Removes leading and trailing whitespace from author names.

---

## 🔄 11. Replace Text in Email Values

```sql
SELECT name,
       REPLACE(email, 'Not Provided', '') AS Email
FROM authors;
```

**Purpose:** Demonstrates replacement of specific text inside email values.

---

### 🔤 String Functions Used

| Function | Purpose |
|---|---|
| `UPPER()` | Converts text to uppercase |
| `TRIM()` | Removes leading and trailing spaces |
| `REPLACE()` | Replaces specified text |

---

# 📊 Part E — Aggregate, Ranking & Conditional Analysis

## ➕ 12. Count Books by Category

```sql
SELECT category,
       COUNT(*) AS total_books
FROM books
GROUP BY category;
```

**Purpose:** Calculates the number of books available in each category.

---

## 💰 13. Calculate Average Book Price

```sql
SELECT AVG(price) AS average_price
FROM books;
```

**Purpose:** Calculates the average price of books in the library.

---

## 🏆 14. Find the Most Borrowed Book

```sql
SELECT b.book_id,
       b.title,
       COUNT(t.transaction_id) AS borrow_count
FROM books b
JOIN transactions t
ON b.book_id = t.book_id
GROUP BY b.book_id, b.title
ORDER BY borrow_count DESC
LIMIT 1;
```

**Purpose:** Identifies the book with the highest number of borrowing transactions.

---

## 💸 15. Calculate Total Fines

```sql
SELECT SUM(fine_amount) AS total_fines
FROM transactions;
```

**Purpose:** Calculates the total fine amount generated from all transactions.

---

# 🔗 Advanced SQL Analysis

## 🔎 16. Subquery — Books Borrowed by Recent Members

```sql
SELECT *
FROM books
WHERE book_id IN
(
    SELECT book_id
    FROM transactions
    WHERE member_id IN
    (
        SELECT member_id
        FROM members
        WHERE membership_date > '2022-12-31'
    )
);
```

**Purpose:** Finds books associated with transactions made by members who joined after the specified date.

---

## 🔎 17. Subquery — Most Borrowed Book

```sql
SELECT *
FROM books
WHERE book_id =
(
    SELECT book_id
    FROM transactions
    GROUP BY book_id
    ORDER BY COUNT(*) DESC
    LIMIT 1
);
```

**Purpose:** Uses a subquery to identify the most frequently borrowed book.

---

## 🔎 18. Subquery — Members Without Transactions

```sql
SELECT *
FROM members
WHERE member_id NOT IN
(
    SELECT member_id
    FROM transactions
);
```

**Purpose:** Identifies members who do not have any transaction records.

---

# 📈 Window Functions

## 🏅 19. Rank Books by Borrow Count

```sql
SELECT b.book_id,
       b.title,
       COUNT(t.transaction_id) AS borrow_count,
       RANK() OVER (
           ORDER BY COUNT(t.transaction_id) DESC
       ) AS book_rank
FROM books b
LEFT JOIN transactions t
ON b.book_id = t.book_id
GROUP BY b.book_id, b.title;
```

**Purpose:** Ranks books from the most borrowed to the least borrowed.

---

## 📚 20. Calculate Cumulative Books Borrowed

```sql
SELECT member_id,
       borrow_date,
       COUNT(*) OVER (
           PARTITION BY member_id
           ORDER BY borrow_date
       ) AS cumulative_books
FROM transactions;
```

**Purpose:** Calculates the cumulative number of books borrowed by each member over time.

---

## 📊 21. Calculate Moving Average

```sql
SELECT borrow_month,
       monthly_borrowed,
       AVG(monthly_borrowed) OVER (
           ORDER BY borrow_month
           ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
       ) AS moving_average
FROM
(
    SELECT DATE_FORMAT(borrow_date, '%Y-%m') AS borrow_month,
           COUNT(*) AS monthly_borrowed
    FROM transactions
    GROUP BY DATE_FORMAT(borrow_date, '%Y-%m')
) AS monthly_data;
```

**Purpose:** Calculates a three-period moving average of monthly borrowing activity.

---

# 🏷️ CASE Expressions

## 👥 22. Membership Status

```sql
SELECT m.member_id,
       m.name,
       CASE
           WHEN MAX(t.borrow_date) >=
                DATE_SUB(CURDATE(), INTERVAL 6 MONTH)
           THEN 'Active'
           ELSE 'Inactive'
       END AS Membership_Status
FROM members m
LEFT JOIN transactions t
ON m.member_id = t.member_id
GROUP BY m.member_id, m.name;
```

**Purpose:** Categorizes members as `Active` or `Inactive` based on recent borrowing activity.

---

## 📚 23. Book Classification

```sql
SELECT *,
       CASE
           WHEN published_date > '2020-12-31'
               THEN 'New Arrival'
           WHEN published_date < '2000-01-01'
               THEN 'Classic'
           ELSE 'Regular'
       END AS Book_Category
FROM books;
```

### Classification Logic

| Publication Date | Category |
|---|---|
| After `2020-12-31` | 🆕 New Arrival |
| Before `2000-01-01` | 📜 Classic |
| Otherwise | 📚 Regular |

---

# 🛠️ Tech Stack

| Tool / Concept | Purpose |
|---|---|
| 🐬 **MySQL** | Relational database management system |
| 🗃️ **SQL** | Database querying and manipulation |
| 🔑 **Primary Key** | Uniquely identifies each record |
| 🔗 **Foreign Key** | Establishes relationships between tables |
| 📝 **CRUD Operations** | Insert, update, delete, and retrieve data |
| 🔍 **SQL Clauses** | Filter, sort, group, and limit records |
| ⚙️ **SQL Operators** | Apply logical conditions |
| 🧮 **Aggregate Functions** | Summarize data |
| 🔗 **JOINs** | Combine related tables |
| 🔎 **Subqueries** | Perform nested queries |
| 📅 **Date Functions** | Analyze and format dates |
| 🔤 **String Functions** | Transform text values |
| 📈 **Window Functions** | Perform advanced analytical calculations |
| 🏷️ **CASE Expressions** | Apply conditional classification |

---

# 📈 Results & Learning Outcomes

After completing the project, the following SQL capabilities are demonstrated:

- ✅ **Relational Database Design**
- 🔑 **Primary Key & Foreign Key Implementation**
- 📝 **CRUD Operations**
- 🔍 **Data Filtering**
- 📊 **Sorting & Grouping**
- 🧮 **Aggregate Data Analysis**
- 🔗 **Multiple JOIN Operations**
- 🔎 **Nested Subqueries**
- 📅 **Date & Time Manipulation**
- 🔤 **String Transformation**
- 🏅 **Ranking using Window Functions**
- 📈 **Cumulative Calculations**
- 📊 **Moving Average Analysis**
- 🏷️ **Conditional Data Classification**

---

# 🏆 Advantages

| Advantage | Description |
|---|---|
| 🎓 **Educational** | Covers fundamental and advanced SQL concepts |
| 📚 **Practical** | Represents a real-world library management scenario |
| 🔗 **Relational** | Demonstrates relationships between multiple tables |
| 🧮 **Analytical** | Converts raw library records into useful information |
| 📈 **Advanced SQL** | Includes subqueries and window functions |
| 📅 **Data Transformation** | Demonstrates date and string manipulation |
| 🏷️ **Conditional Analysis** | Uses `CASE` for meaningful classifications |
| 🧩 **Extensible** | Can be expanded with additional library features |
| 💡 **Skill Development** | Strengthens practical SQL and database management skills |

---

# 🚀 How to Run

## 1️⃣ Install MySQL

Make sure **MySQL Server** and a MySQL client such as **MySQL Workbench** are installed on your system.

---

## 2️⃣ Open the SQL File

Open the project SQL file:

```text
Practical_Exam.sql
```

in **MySQL Workbench** or another compatible MySQL editor.

---

## 3️⃣ Create the Database

Run:

```sql
CREATE DATABASE SLMS;

USE SLMS;
```

---

## 4️⃣ Create the Tables

Create the tables in the appropriate relational order:

```text
Authors
   ↓
Books
   ↓
Members
   ↓
Transactions
```

The foreign-key relationships should be created after the referenced tables are available.

---

## 5️⃣ Insert the Records

Execute the `INSERT INTO` statements to populate:

```text
📚 Books
✍️ Authors
👥 Members
🔄 Transactions
```

---

## 6️⃣ Execute the SQL Queries

Run the practical queries section by section:

```text
Q-1  → CRUD Operations
Q-2  → SQL Clauses
Q-3  → SQL Operators
Q-4  → Sorting & Grouping
Q-5  → Aggregate Functions
Q-6  → Primary & Foreign Keys
Q-7  → JOIN Operations
Q-8  → Subqueries
Q-9  → Date & Time Functions
Q-10 → String Manipulation
Q-11 → Window Functions
Q-12 → CASE Expressions
```

---

## 7️⃣ View the Results

After executing each query, inspect the result grid in MySQL Workbench to verify the output and understand how each SQL concept works.

---

# 📄 License

This project is intended for **educational and learning purposes**.

```text
Free to use, study, modify, and extend for educational purposes.
```

---

# 👤 Author

<div align="center">

### Sneha Gupta

> *"Learning SQL is not just about writing queries — it's about turning data into useful information."*

**🎓 Role:** BBA Student | SQL Learner  
**🛠️ Skills:** SQL · MySQL · Database Management · Data Analysis

</div>

---

# 🙏 Acknowledgements

This project was developed as a practical SQL project to strengthen database management, relational database design, and analytical SQL skills.

Special appreciation for the concepts and tools used throughout the project:

- 🐬 **MySQL** — Relational database management
- 🗃️ **SQL** — Database querying and manipulation
- 🔑 **Primary & Foreign Keys** — Relational integrity
- 🔗 **JOIN Operations** — Multi-table analysis
- 🧮 **Aggregate Functions** — Data summarization
- 🔎 **Subqueries** — Nested data analysis
- 📅 **Date Functions** — Date-based analysis
- 🔤 **String Functions** — Text transformation
- 📈 **Window Functions** — Advanced SQL analysis
- 🏷️ **CASE Expressions** — Conditional classification

---

<div align="center">

---

## 📚 SLMS — Library Management System

### *SQL Database Management & Analysis Project*

**Made with ❤️ and SQL**

---

*Last Updated: August 2026*

</div>
