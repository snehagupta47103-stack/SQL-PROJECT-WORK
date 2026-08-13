<div align="center">

# -- ! University Course Management System — SQL Database Project ! --

### *Relational Database Design, SQL Queries & Academic Data Analysis Using MySQL*

[![MySQL](https://img.shields.io/badge/MySQL-8.0%2B-4479A1?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)
[![SQL](https://img.shields.io/badge/SQL-Database%20Queries-FF6F00?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)
[![Relational Database](https://img.shields.io/badge/Database-Relational-2E7D32?style=for-the-badge)](https://www.mysql.com/)
[![Academic Project](https://img.shields.io/badge/Project-University%20Course%20Management-7B1FA2?style=for-the-badge)](https://www.mysql.com/)

<br/>

> *"A well-designed database turns academic data into meaningful information through structured queries and relationships."*

</div>

---

## 📋 Table of Contents

- [📌 Overview](#-overview)
- [🎯 Problem Statement](#-problem-statement)
- [✨ Key Features](#-key-features)
- [🗄️ Database Overview](#️-database-overview)
- [🏗️ Database Structure](#️-database-structure)
- [🔗 Table Relationships](#-table-relationships)
- [🔄 Project Workflow](#-project-workflow)
- [📝 CRUD Operations](#-crud-operations)
- [🔍 Query Analysis](#-query-analysis)
- [📊 Query Categories](#-query-categories)
- [🛠️ SQL Concepts Used](#️-sql-concepts-used)
- [📈 Results & Learning Outcomes](#-results--learning-outcomes)
- [🏆 Advantages](#-advantages)
- [📁 Project Structure](#-project-structure)
- [🚀 How to Run](#-how-to-run)
- [📄 License](#-license)
- [👤 Author](#-author)

---

## 📌 Overview

The **University Course Management System (UCMS)** is a practical MySQL database project designed to demonstrate **relational database design, table relationships, CRUD operations, SQL JOINs, subqueries, aggregate functions, date functions, string functions, and conditional logic**.

The project represents a simplified university environment where students enroll in courses, courses belong to departments, and instructors are assigned to departments.

The database consists of five interconnected tables:

- 👨‍🎓 **Students** — Stores student personal and enrollment information.
- 📚 **Courses** — Stores available university courses, departments, and credit information.
- 👨‍🏫 **Instructors** — Stores instructor details, departments, and salary information.
- 📝 **Enrollments** — Records which students are enrolled in which courses.
- 🏢 **Departments** — Stores university department information.

The project focuses on transforming relational data into useful academic information using SQL.

---

## 🎯 Problem Statement

> **Objective:** Build and analyze a structured relational database for managing university students, courses, instructors, departments, and enrollments using MySQL.

The project demonstrates how SQL can be used to:

- Create and manage relational tables
- Insert and retrieve records
- Update and delete existing data
- Establish relationships using Primary Keys and Foreign Keys
- Retrieve students based on enrollment dates
- Filter courses by department
- Count students enrolled in courses
- Use subqueries for advanced data retrieval
- Calculate averages and maximum values
- Extract years from dates
- Concatenate instructor names
- Perform INNER JOIN and LEFT JOIN operations
- Apply conditional logic using `CASE`
- Analyze academic data using aggregate functions

---

## ✨ Key Features

| 📂 Feature | 🔍 Description |
|------------|----------------|
| 🗄️ Relational Database | Five interconnected academic tables |
| 🔑 Primary Keys | Uniquely identify records in each table |
| 🔗 Foreign Keys | Maintain relationships between related tables |
| ➕ CRUD Operations | Create, Read, Update, and Delete records |
| 🔄 SQL JOINs | Combine information from multiple tables |
| 🔍 Subqueries | Perform nested data analysis |
| 📊 Aggregate Functions | Calculate counts, averages, and maximum values |
| 📅 Date Functions | Extract years and filter records by dates |
| 🔤 String Functions | Combine first and last names |
| 🏷️ CASE Expression | Categorize students based on enrollment year |
| 🎓 Academic Analysis | Analyze students, courses, departments, and enrollments |

---

## 🗄️ Database Overview

### 🏢 Database Name

```text
University_Course_Management
```

### 📊 Main Tables

| Table | Purpose | Primary Key |
|-------|---------|-------------|
| 👨‍🎓 `Students` | Stores student information | `StudentID` |
| 📚 `Courses` | Stores course information | `CourseID` |
| 👨‍🏫 `Instructors` | Stores instructor information | `InstructorID` |
| 📝 `Enrollments` | Stores student-course enrollment records | `EnrollmentID` |
| 🏢 `Departments` | Stores department information | `DepartmentID` |

---

## 🏗️ Database Structure

### 👨‍🎓 Students

The `Students` table stores basic information about university students.

| Column | Data Type | Constraint |
|--------|-----------|------------|
| `StudentID` | INT | PRIMARY KEY, AUTO_INCREMENT |
| `FirstName` | VARCHAR(50) | — |
| `LastName` | VARCHAR(50) | — |
| `Email` | VARCHAR(50) | — |
| `BirthDate` | DATE | — |
| `EnrollmentDate` | DATE | — |

---

### 📚 Courses

The `Courses` table stores information about courses offered by different departments.

| Column | Data Type | Constraint |
|--------|-----------|------------|
| `CourseID` | INT | PRIMARY KEY, AUTO_INCREMENT |
| `CourseName` | VARCHAR(50) | — |
| `DepartmentID` | INT | FOREIGN KEY |
| `Credits` | INT | — |

---

### 👨‍🏫 Instructors

The `Instructors` table stores instructor information, department assignments, and salary details.

| Column | Data Type | Constraint |
|--------|-----------|------------|
| `InstructorID` | INT | PRIMARY KEY, AUTO_INCREMENT |
| `FirstName` | VARCHAR(50) | — |
| `LastName` | VARCHAR(50) | — |
| `Email` | VARCHAR(50) | — |
| `DepartmentID` | INT | FOREIGN KEY |
| `Salary` | DECIMAL(10,2) | — |

---

### 📝 Enrollments

The `Enrollments` table acts as a connecting table between students and courses.

| Column | Data Type | Constraint |
|--------|-----------|------------|
| `EnrollmentID` | INT | PRIMARY KEY, AUTO_INCREMENT |
| `StudentID` | INT | FOREIGN KEY |
| `CourseID` | INT | FOREIGN KEY |
| `EnrollmentDate` | DATE | — |

> `EnrollmentDate` is a normal `DATE` field and is **not** a Foreign Key.

---

### 🏢 Departments

The `Departments` table stores the different academic departments.

| Column | Data Type | Constraint |
|--------|-----------|------------|
| `DepartmentID` | INT | PRIMARY KEY, AUTO_INCREMENT |
| `DepartmentName` | VARCHAR(50) | — |

---

## 🔗 Table Relationships

The database uses **Primary Key–Foreign Key relationships** to connect related tables.

### 🔑 Primary Key Relationships

```text
Departments.DepartmentID
          │
          ├──────────────► Courses.DepartmentID
          │
          └──────────────► Instructors.DepartmentID


Students.StudentID
          │
          └──────────────► Enrollments.StudentID


Courses.CourseID
          │
          └──────────────► Enrollments.CourseID
```

### 🔗 Relationship Summary

| Parent Table | Parent Key | Child Table | Foreign Key |
|--------------|------------|-------------|-------------|
| `Departments` | `DepartmentID` | `Courses` | `DepartmentID` |
| `Departments` | `DepartmentID` | `Instructors` | `DepartmentID` |
| `Students` | `StudentID` | `Enrollments` | `StudentID` |
| `Courses` | `CourseID` | `Enrollments` | `CourseID` |

### 🧩 Overall Relationship Diagram

```text
                         ┌────────────────────┐
                         │    DEPARTMENTS     │
                         ├────────────────────┤
                         │ DepartmentID (PK)  │
                         │ DepartmentName     │
                         └─────────┬──────────┘
                                   │
                    ┌──────────────┴──────────────┐
                    │                             │
                    ▼                             ▼
          ┌──────────────────┐          ┌──────────────────┐
          │      COURSES     │          │    INSTRUCTORS   │
          ├──────────────────┤          ├──────────────────┤
          │ CourseID (PK)    │          │ InstructorID (PK)│
          │ CourseName       │          │ FirstName        │
          │ DepartmentID (FK)│          │ LastName         │
          │ Credits          │          │ Email            │
          └────────┬─────────┘          │ DepartmentID (FK)│
                   │                    │ Salary           │
                   │                    └──────────────────┘
                   │
                   ▼
          ┌─────────────────────┐
          │     ENROLLMENTS     │
          ├─────────────────────┤
          │ EnrollmentID (PK)   │
          │ StudentID (FK)      │
          │ CourseID (FK)       │
          │ EnrollmentDate      │
          └──────────┬──────────┘
                     │
                     ▼
          ┌─────────────────────┐
          │      STUDENTS       │
          ├─────────────────────┤
          │ StudentID (PK)      │
          │ FirstName           │
          │ LastName            │
          │ Email               │
          │ BirthDate           │
          │ EnrollmentDate      │
          └─────────────────────┘
```

---

## 🔄 Project Workflow

```text
                    🏢 UNIVERSITY DATABASE
                             │
                             ▼
                  🗄️ CREATE DATABASE
                             │
                             ▼
                  🏗️ CREATE TABLES
                             │
                             ▼
                    🔑 DEFINE KEYS
                             │
                 ┌───────────┴───────────┐
                 │                       │
                 ▼                       ▼
           PRIMARY KEYS            FOREIGN KEYS
                 │                       │
                 └───────────┬───────────┘
                             ▼
                    📝 INSERT RECORDS
                             │
                             ▼
                     🔄 CRUD OPERATIONS
                             │
                             ▼
                    🔍 SQL QUERY ANALYSIS
                             │
          ┌──────────────────┼──────────────────┐
          │                  │                  │
          ▼                  ▼                  ▼
       🔗 JOINS          🔍 SUBQUERIES       📊 AGGREGATES
          │                  │                  │
          └──────────────────┼──────────────────┘
                             ▼
                    📅 DATE FUNCTIONS
                             │
                             ▼
                    🔤 STRING FUNCTIONS
                             │
                             ▼
                     🏷️ CASE ANALYSIS
                             │
                             ▼
                       📈 RESULTS
```

---

## 📝 CRUD Operations

CRUD operations were performed to practice basic database manipulation.

### ➕ Create / Insert

```sql
INSERT INTO Students
(FirstName, LastName, Email, BirthDate, EnrollmentDate)
VALUES
('Karan', 'Patel', 'karan.patel@gmail.com', '2005-10-15', '2024-07-01');
```

### 📖 Read

```sql
SELECT *
FROM Students;
```

### ✏️ Update

```sql
UPDATE Students
SET Email = 'karan.patel123@gmail.com'
WHERE FirstName = 'Karan'
  AND LastName = 'Patel';
```

### 🗑️ Delete

```sql
DELETE FROM Students
WHERE FirstName = 'Karan'
  AND LastName = 'Patel';
```

---

## 🔍 Query Analysis

### Query 1 — CRUD Operations

Performed **Create, Read, Update, and Delete** operations on the database tables.

---

### Query 2 — Students Enrolled After 2022

```sql
SELECT *
FROM Students
WHERE EnrollmentDate > '2022-12-31';
```

This retrieves students whose enrollment date is after the year 2022.

---

### Query 3 — Mathematics Department Courses

```sql
SELECT *
FROM Courses
WHERE DepartmentID = (
    SELECT DepartmentID
    FROM Departments
    WHERE DepartmentName = 'Mathematics'
)
LIMIT 5;
```

This retrieves a maximum of five courses offered by the **Mathematics department**.

---

### Query 4 — Students Enrolled in Each Course

```sql
SELECT CourseID,
       COUNT(StudentID) AS TotalStudents
FROM Enrollments
GROUP BY CourseID
HAVING COUNT(StudentID) > 5;
```

This identifies courses having more than five enrolled students.

---

### Query 5 — Students in Both SQL and Data Structures

```sql
SELECT StudentID
FROM Enrollments
WHERE CourseID IN (
    SELECT CourseID
    FROM Courses
    WHERE CourseName IN ('Introduction to SQL', 'Data Structures')
)
GROUP BY StudentID
HAVING COUNT(DISTINCT CourseID) = 2;
```

This identifies students enrolled in **both** `Introduction to SQL` and `Data Structures`.

---

### Query 6 — Students in Either SQL or Data Structures

```sql
SELECT DISTINCT StudentID
FROM Enrollments
WHERE CourseID IN (
    SELECT CourseID
    FROM Courses
    WHERE CourseName IN ('Introduction to SQL', 'Data Structures')
);
```

This retrieves students enrolled in **either** of the two specified courses.

---

### Query 7 — Average Course Credits

```sql
SELECT AVG(Credits) AS AverageCredits
FROM Courses;
```

This calculates the average number of credits across all courses.

---

### Query 8 — Maximum Instructor Salary

```sql
SELECT MAX(Salary) AS MaximumSalary
FROM Instructors
WHERE DepartmentID = (
    SELECT DepartmentID
    FROM Departments
    WHERE DepartmentName = 'Computer Science'
);
```

This finds the highest instructor salary in the **Computer Science department**.

---

### Query 9 — Students Enrolled in Each Department

```sql
SELECT d.DepartmentName,
       COUNT(DISTINCT e.StudentID) AS TotalStudents
FROM Departments d
JOIN Courses c
    ON d.DepartmentID = c.DepartmentID
JOIN Enrollments e
    ON c.CourseID = e.CourseID
GROUP BY d.DepartmentID, d.DepartmentName;
```

This calculates the number of unique students enrolled through each department's courses.

---

### Query 10 — INNER JOIN: Students and Courses

```sql
SELECT
    s.StudentID,
    s.FirstName,
    s.LastName,
    c.CourseID,
    c.CourseName
FROM Students s
INNER JOIN Enrollments e
    ON s.StudentID = e.StudentID
INNER JOIN Courses c
    ON e.CourseID = c.CourseID;
```

This retrieves student details together with the courses they are enrolled in.

---

### Query 11 — LEFT JOIN: All Students and Their Courses

```sql
SELECT
    s.StudentID,
    s.FirstName,
    s.LastName,
    c.CourseID,
    c.CourseName
FROM Students s
LEFT JOIN Enrollments e
    ON s.StudentID = e.StudentID
LEFT JOIN Courses c
    ON e.CourseID = c.CourseID;
```

This retrieves **all students**, including students who are not enrolled in any course.

---

### Query 12 — Courses With More Than 10 Students

```sql
SELECT CourseID, CourseName
FROM Courses
WHERE CourseID IN (
    SELECT CourseID
    FROM Enrollments
    GROUP BY CourseID
    HAVING COUNT(StudentID) > 10
);
```

This identifies courses with more than ten enrolled students using a **subquery**.

---

### Query 13 — Extract Year From Enrollment Date

```sql
SELECT
    EnrollmentID,
    StudentID,
    CourseID,
    EnrollmentDate,
    YEAR(EnrollmentDate) AS EnrollmentYear
FROM Enrollments;
```

This extracts the year from `EnrollmentDate`.

---

### Query 14 — Concatenate Instructor Names

```sql
SELECT
    InstructorID,
    CONCAT(FirstName, ' ', LastName) AS FullName
FROM Instructors;
```

This combines the instructor's first and last names into a single `FullName` column.

---

### Query 15 — Total Students Enrolled

```sql
SELECT COUNT(DISTINCT StudentID) AS TotalStudentsEnrolled
FROM Enrollments;
```

This calculates the total number of unique students enrolled in courses.

---

### Query 16 — Student Classification

```sql
SELECT
    StudentID,
    FirstName,
    LastName,
    EnrollmentDate,
    CASE
        WHEN YEAR(EnrollmentDate) <= 2023 THEN 'Senior'
        ELSE 'Junior'
    END AS StudentLevel
FROM Students;
```

This classifies students as **Senior** or **Junior** according to their enrollment year.

---

## 📊 Query Categories

| Category | Queries | SQL Concepts |
|----------|---------|--------------|
| 🔄 CRUD | Query 1 | `INSERT`, `SELECT`, `UPDATE`, `DELETE` |
| 📅 Filtering | Query 2 | `WHERE`, Date Comparison |
| 🔍 Subquery | Query 3 | Nested `SELECT`, `LIMIT` |
| 📊 Aggregation | Query 4 | `COUNT()`, `GROUP BY`, `HAVING` |
| 🔎 Advanced Filtering | Query 5–6 | `IN`, `GROUP BY`, `HAVING`, `DISTINCT` |
| 📈 Statistics | Query 7 | `AVG()` |
| 💰 Salary Analysis | Query 8 | `MAX()`, Subquery |
| 🏢 Department Analysis | Query 9 | `JOIN`, `COUNT()`, `GROUP BY` |
| 🔗 JOIN Operations | Query 10–11 | `INNER JOIN`, `LEFT JOIN` |
| 🔍 Subquery Analysis | Query 12 | Subquery, `COUNT()`, `HAVING` |
| 📅 Date Functions | Query 13 | `YEAR()` |
| 🔤 String Functions | Query 14 | `CONCAT()` |
| 👥 Enrollment Analysis | Query 15 | `COUNT()`, `DISTINCT` |
| 🏷️ Conditional Logic | Query 16 | `CASE`, `YEAR()` |

---

## 🛠️ SQL Concepts Used

### 🔑 Database & Table Management

- `CREATE DATABASE`
- `CREATE TABLE`
- `ALTER TABLE`
- Primary Keys
- Foreign Keys
- `AUTO_INCREMENT`

### 📝 Data Manipulation

- `INSERT`
- `SELECT`
- `UPDATE`
- `DELETE`

### 🔗 Relational Operations

- `INNER JOIN`
- `LEFT JOIN`
- Table relationships
- Primary Key–Foreign Key mapping

### 📊 Aggregate Functions

- `COUNT()`
- `AVG()`
- `MAX()`

### 🔍 Filtering & Grouping

- `WHERE`
- `GROUP BY`
- `HAVING`
- `DISTINCT`
- `LIMIT`

### 📅 Date Functions

- `YEAR()`
- Date comparison

### 🔤 String Functions

- `CONCAT()`

### 🧠 Advanced SQL

- Subqueries
- Conditional logic
- Nested queries
- Multi-table analysis

---

## 📈 Results & Learning Outcomes

This project provides practical experience in designing and querying a relational database.

### 🎓 Key Learning Outcomes

After completing this project, the following SQL concepts can be practiced and understood:

- Understanding relational database structures
- Creating tables with appropriate keys
- Understanding Primary Key and Foreign Key relationships
- Performing CRUD operations
- Retrieving data using `SELECT`
- Filtering data using `WHERE`
- Grouping records using `GROUP BY`
- Filtering grouped results using `HAVING`
- Joining multiple related tables
- Writing and understanding subqueries
- Using aggregate functions for analysis
- Working with date values
- Manipulating text using string functions
- Applying conditional logic using `CASE`
- Analyzing student enrollment information

---

## 🏆 Advantages

### ✅ Practical Database Design

The project represents a realistic academic environment rather than isolated SQL examples.

### ✅ Relational Data Understanding

The project demonstrates how different tables can be connected using keys and relationships.

### ✅ Query Practice

Multiple SQL concepts are practiced through real-world university-related scenarios.

### ✅ Data Analysis

Aggregate functions and subqueries allow meaningful information to be extracted from raw database records.

### ✅ Beginner-Friendly Structure

The project progresses from basic CRUD operations to more advanced SQL queries.

### ✅ Strong SQL Foundation

The project provides practice with important SQL concepts required for academic lab work and database projects.

---

## 📁 Project Structure

```text
University_Course_Management/
│
├── README.md
│
├── university_course_management.sql
│
└── screenshots/
    ├── database.png
    ├── students.png
    ├── courses.png
    ├── instructors.png
    ├── enrollments.png
    └── departments.png
```

---

## 🚀 How to Run

### 1️⃣ Open MySQL

Open **MySQL Command Line Client**, MySQL Workbench, or another MySQL-compatible environment.

### 2️⃣ Create the Database

```sql
CREATE DATABASE University_Course_Management;
```

### 3️⃣ Select the Database

```sql
USE University_Course_Management;
```

### 4️⃣ Create Tables

Create the tables in the correct dependency order:

```text
1. Departments
2. Students
3. Courses
4. Instructors
5. Enrollments
```

### 5️⃣ Insert Records

Insert the required records into each table.

### 6️⃣ Verify Tables

```sql
SHOW TABLES;
```

### 7️⃣ View Table Structure

```sql
DESC Students;
DESC Courses;
DESC Instructors;
DESC Enrollments;
DESC Departments;
```

### 8️⃣ Execute SQL Queries

Run the queries provided in the project to perform academic data analysis.

---

## 🧪 Database Verification

To verify the number of records in each table:

```sql
SELECT COUNT(*) AS TotalStudents
FROM Students;

SELECT COUNT(*) AS TotalCourses
FROM Courses;

SELECT COUNT(*) AS TotalInstructors
FROM Instructors;

SELECT COUNT(*) AS TotalEnrollments
FROM Enrollments;

SELECT COUNT(*) AS TotalDepartments
FROM Departments;
```

---

## 📚 Project Highlights

```text
┌─────────────────────────────────────────────┐
│       UNIVERSITY COURSE MANAGEMENT          │
├─────────────────────────────────────────────┤
│                                             │
│  👨‍🎓 Students                               │
│       │                                     │
│       ▼                                     │
│  📝 Enrollments ◄──────► 📚 Courses        │
│                              │              │
│                              ▼              │
│                         🏢 Departments      │
│                              ▲              │
│                              │              │
│                         👨‍🏫 Instructors     │
│                                             │
├─────────────────────────────────────────────┤
│  🔄 CRUD   🔗 JOINS   🔍 SUBQUERIES        │
│  📊 AGGREGATES   📅 DATE   🔤 STRING       │
│  🏷️ CASE      📈 DATA ANALYSIS             │
└─────────────────────────────────────────────┘
```

---

## 📄 License

This project is created for **educational and academic SQL practice purposes**.

You are free to study, modify, and extend the database for learning and lab-work purposes.

---

## 👤 Author

<div align="center">

### **Sneha Gupta**

🎓 Student | 💻 SQL Learner | 📊 Data Analysis Enthusiast

*Built as part of practical SQL and database management learning.*

</div>

---

<div align="center">

### ⭐ University Course Management System

**Designed • Developed • Practiced with MySQL**

</div>
