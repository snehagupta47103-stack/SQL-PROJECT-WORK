CREATE DATABASE Data_Transformer;

USE Data_Transformer;

CREATE TABLE customers(
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR (50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    RegistrationDate DATE 
);

INSERT INTO customers (FirstName, LastName, Email, RegistrationDate) VALUES
('John', 'Doe', 'john.doe@email.com', '2022-03-15'),
('Jane', 'Smith', 'jane.smith@email.com', '2021-11-02'),
('Michael', 'Brown', 'michael.brown@email.com', '2023-01-10'),
('Emily', 'Davis', 'emily.davis@email.com', '2022-06-25'),
('David', 'Wilson', 'david.wilson@email.com', '2023-02-18'),
('Sarah', 'Miller', 'sarah.miller@email.com', '2021-09-12'),
('Daniel', 'Taylor', 'daniel.taylor@email.com', '2023-04-05'),
('Olivia', 'Anderson', 'olivia.anderson@email.com', '2022-12-20'),
('James', 'Thomas', 'james.thomas@email.com', '2023-05-14'),
('Sophia', 'Moore', 'sophia.moore@email.com', '2021-07-30');

CREATE TABLE orders(
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES customers(CustomerID)
);

INSERT INTO orders (OrderID, CustomerID, OrderDate, TotalAmount) VALUES
(101, 1, '2023-07-01', 150.50),
(102, 2, '2023-07-03', 200.75),
(103, 3, '2023-07-05', 750.00),
(104, 1, '2023-07-10', 1200.00),
(105, 4, '2023-07-12', 450.25),
(106, 5, '2023-07-15', 850.50),
(107, 3, '2023-07-18', 300.00),
(108, 6, '2023-07-20', 1500.00),
(109, 7, '2023-07-22', 625.75),
(110, 8, '2023-07-25', 950.00);

CREATE TABLE employees(
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR (50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    HireDate DATE,
    Salary DECIMAL(10,2)
);

INSERT INTO employees (EmployeeID, FirstName, LastName, Department, HireDate, Salary) VALUES
(1, 'Mark', 'Johnson', 'Sales', '2020-01-15', 50000.00),
(2, 'Susan', 'Lee', 'HR', '2021-03-20', 55000.00),
(3, 'Robert', 'Martin', 'IT', '2019-07-10', 75000.00),
(4, 'Linda', 'Clark', 'Finance', '2022-02-05', 62000.00),
(5, 'William', 'Lewis', 'Sales', '2020-11-18', 48000.00),
(6, 'Karen', 'Walker', 'HR', '2023-01-12', 58000.00),
(7, 'Thomas', 'Hall', 'IT', '2018-09-25', 90000.00),
(8, 'Nancy', 'Allen', 'Finance', '2021-06-30', 68000.00),
(9, 'Charles', 'Young', 'Sales', '2022-08-14', 52000.00),
(10, 'Jessica', 'King', 'IT', '2023-04-22', 70000.00);

-- QUERIES TO PERFORM

SELECT * FROM orders INNER JOIN customers ON orders.CustomerID = customers.CustomerID;      

SELECT * FROM customers LEFT JOIN orders ON customers.CustomerID = orders.CustomerID;

SELECT * FROM customers RIGHT JOIN orders ON customers.CustomerID = orders.CustomerID;

SELECT * FROM customers LEFT JOIN orders ON customers.CustomerID = orders.CustomerID;
UNION
SELECT * FROM customers RIGHT JOIN orders ON customers.CustomerID = orders.CustomerID;

SELECT * FROM customers INNER JOIN orders ON customers.CustomerID = orders.CustomerID 
WHERE orders.TotalAmount > (SELECT AVG(TotalAmount) FROM orders);

SELECT * FROM employees WHERE Salary > (SELECT AVG(Salary) FROM employees);

SELECT *, YEAR(OrderDate) AS OrderYear, MONTH(OrderDate) AS OrderMonth FROM orders;

SELECT *, DATEDIFF(CURDATE(),OrderDate) AS Days_Difference FROM orders;

SELECT *, DATE_FORMAT(OrderDate,'%d-%m-%Y') AS Formatted_OrderDate FROM orders;

SELECT *, CONCAT(FirstName, ' ', LastName) AS FullName FROM employees;

SELECT *, REPLACE(FirstName,'John','Johnathan') AS UpdatedFirstName FROM customers;

SELECT *, UPPER(FirstName) AS UPPER_FIRST_NAME, LOWER(LastName) AS LOWER_LAST_NAME FROM customers;

SELECT *, TRIM(Email) AS TrimmedEmail FROM customers;

SELECT *, SUM(TotalAmount) OVER (ORDER BY OrderID) AS RunningTotal FROM orders;

SELECT *, RANK() OVER (ORDER BY TotalAmount DESC) AS OrderRank FROM orders;

SELECT *, CASE WHEN TotalAmount > 1000 THEN 10 WHEN TotalAmount > 500 THEN 5 ELSE 0 END AS DiscountPercent FROM orders;

SELECT *, CASE WHEN Salary > 80000 THEN 'HIGH' WHEN Salary >= 50000 THEN 'MEDIUM' ELSE 'LOW' END AS SalaryCategory FROM employees;