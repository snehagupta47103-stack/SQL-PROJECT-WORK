CREATE DATABASE DataDigger;

USE DataDigger;

CREATE TABLE customers(
    cust_id int PRIMARY KEY,AUTO_INCREMENT,
    name VARCHAR (100) Not Null,
    email VARCHAR (100) Unique,
    address VARCHAR (50)
);

INSERT INTO customers (name,email,address) VALUES
('Alice Sharma', 'alice@gmail.com', 'Surat'),
('Amit Verma', 'amit@gmail.com', 'Ahemdabad'),
('Priya Patel', 'priya@gmail.com', 'Vadodara'),
('Neha Singh', 'neha@gmail.com', 'Rajkot'),
('Karan Mehta', 'karan@gmail.com', 'Mumbai');

SELECT * FROM customers;

UPDATE customers set address = 'Vesu' WHERE cust_id = 2;

DELETE FROM customers WHERE cust_id = 2;

SELECT * FROM customers WHERE name = 'Alice';
