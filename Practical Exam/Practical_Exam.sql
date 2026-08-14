CREATE DATABASE SLMS;

USE SLMS;

CREATE TABLE books(
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(50),
    author_id INT,
    category VARCHAR(50),
    isbn INT,
    published_date DATE,
    price INT,
    available_copies INT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

INSERT INTO books (title, author_id, category, isbn, published_date, price, available_copies) VALUES
('Harry Potter and the Philosopher Stone', 1, 'Fantasy', 'ISBN1001', '1997-06-26', 599.00, 8),
('Science', 2, 'Dystopian', 'ISBN1002', '1949-06-08', 450.00, 5),
('Pride and Prejudice', 3, 'Romance', 'ISBN1003', '1813-01-28', 399.00, 0),
('Adventures of Tom Sawyer', 4, 'Adventure', 'ISBN1004', '1876-06-01', 350.00, 4),
('The Da Vinci Code', 5, 'Mystery', 'ISBN1005', '2003-04-01', 699.00, 6),
('Murder on the Orient Express', 6, 'Mystery', 'ISBN1006', '1934-01-01', 499.00, 9),
('The Shining', 7, 'Horror', 'ISBN1007', '1977-01-28', 550.00, 3),
('The Alchemist', 8, 'Fiction', 'ISBN1008', '1988-01-01', 399.00, 10),
('Malgudi Days', 9, 'Fiction', 'ISBN1009', '1943-01-01', 299.00, 5),
('Five Point Someone', 10, 'Fiction', 'ISBN1010', '2004-05-01', 350.00, 7);

CREATE TABLE authors (
    author_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE
);

INSERT INTO authors (name, email) VALUES
('J.K. Rowling', 'jkrowling@gmail.com'),
('George Orwell', 'georgeorwell@gmail.com'),
('Jane Austen', 'janeausten@gmail.com'),
('Mark Twain', 'marktwain@gmail.com'),
('Dan Brown', 'danbrown@gmail.com'),
('Agatha Christie', 'agathachristie@gmail.com'),
('Stephen King', 'stephenking@gmail.com'),
('Paulo Coelho', 'paulocoelho@gmail.com'),
('R.K. Narayan', 'rknarayan@gmail.com'),
('Chetan Bhagat', 'chetanbhagat@gmail.com');

CREATE TABLE members (
    member_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    phone_number VARCHAR(15),
    membership_date DATE
);

INSERT INTO members (name, email, phone_number, membership_date) VALUES
('Aarav Sharma', 'aarav@gmail.com', '9876500001', '2024-01-10'),
('Priya Patel', 'priya@gmail.com', '9876500002', '2024-02-15'),
('Rahul Mehta', 'rahul@gmail.com', '9876500003', '2024-03-20'),
('Ananya Shah', 'ananya@gmail.com', '9876500004', '2024-04-12'),
('Rohan Verma', 'rohan@gmail.com', '9876500005', '2024-05-18'),
('Sneha Joshi', 'sneha@gmail.com', '9876500006', '2024-06-25'),
('Aditya Singh', 'aditya@gmail.com', '9876500007', '2024-07-14'),
('Neha Desai', 'neha@gmail.com', '9876500008', '2024-08-21'),
('Karan Shah', 'karan@gmail.com', '9876500009', '2024-09-05'),
('Isha Patel', 'isha@gmail.com', '9876500010', '2024-10-11');

CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    member_id INT,
    book_id INT,
    borrow_date DATE,
    return_date DATE,
    fine_amount DECIMAL(10,2),

    FOREIGN KEY (member_id) REFERENCES Members(member_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

INSERT INTO transactions (member_id, book_id, borrow_date, return_date, fine_amount) VALUES
(1, 1, '2025-01-05', '2025-01-12', 0.00),
(2, 3, '2025-01-10', '2025-01-18', 20.00),
(3, 5, '2025-01-15', '2025-01-22', 0.00),
(4, 2, '2025-02-01', '2025-02-10', 10.00),
(5, 7, '2025-02-05', '2025-02-15', 30.00),
(6, 4, '2025-02-12', '2025-02-20', 0.00),
(7, 8, '2025-03-01', '2025-03-08', 0.00),
(8, 6, '2025-03-05', '2025-03-15', 25.00),
(9, 9, '2025-03-10', '2025-03-18', 0.00),
(10, 10, '2025-03-15', '2025-03-25', 15.00);

--QUERIES TO PERFORM

-- Q-1. IMPELEMENT CRUD OPERATIONS
INSERT INTO books (title, author_id, category, isbn, published_date, price, available_copies) VALUES
('Atomic Habits', 1, 'Self Help', 'ISBN1011', '2018-10-16', 650.00, 6);

INSERT INTO authors (name, email) VALUES
('Robert Kiyosaki', 'robert@gmail.com');

INSERT INTO Members (name, email, phone_number, membership_date) VALUES
('Vivek Sharma', 'vivek@gmail.com', '9876500011', '2025-01-15');

UPDATE Books SET available_copies = available_copies - 1 WHERE book_id = 1;

UPDATE Books SET available_copies = available_copies + 1 WHERE book_id = 1;

DELETE FROM Members WHERE member_id NOT IN (
    SELECT DISTINCT member_id FROM Transactions
    WHERE borrow_date >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR)
);

SELECT * FROM Books WHERE available_copies > 0;

-- Q-2 USE SQL CLUASES (WHERE,HAVING,LIMIT)
SELECT * FROM Books WHERE published_date > '2015-12-31';

SELECT * FROM Books ORDER BY price DESC LIMIT 5;

SELECT * FROM Members WHERE membership_date < '2022-01-01';

-- Q-3 APPLY SQL OPERATORS (AND,OR,NOT)
SELECT * FROM Books WHERE category = 'Science' AND price < 500;

SELECT * FROM Books WHERE available_copies = 0;

SELECT m.member_id, m.name, m.membership_date
FROM Members m
LEFT JOIN Transactions t
ON m.member_id = t.member_id
GROUP BY m.member_id, m.name, m.membership_date
HAVING YEAR(m.membership_date) > 2020 OR COUNT(t.transaction_id) > 3;

-- Q-4 SORTING & GROUPING DATA
SELECT * FROM Books ORDER BY title ASC;

SELECT member_id, COUNT(*) AS books_borrowed
FROM Transactions GROUP BY member_id;

SELECT category, COUNT(*) AS total_books FROM Books GROUP BY category;

-- Q-5 AGGREGATE FUNCTION
SELECT category, COUNT(*) AS total_books FROM Books GROUP BY category;

SELECT AVG(price) AS average_price FROM Books;

SELECT b.book_id, b.title,COUNT(t.transaction_id) AS borrow_count
FROM Books b JOIN Transactions t ON b.book_id = t.book_id
GROUP BY b.book_id, b.title
ORDER BY borrow_count DESC LIMIT 1;

SELECT SUM(fine_amount) AS total_fines FROM Transactions;

-- Q-6 PRIMARY & FOREIGN KEY RELATIONSHIPS
FOREIGN KEY (author_id) REFERENCES Authors(author_id);

FOREIGN KEY (member_id) REFERENCES Members(member_id);

-- Q-7 IMPLEMENT JOINS
SELECT * FROM books b INNER JOIN authors a ON b.author_id = a.author_id;

SELECT * FROM members m LEFT JOIN transactions t ON m.member_id = t.member_id;

SELECT * FROM transactions t RIGHT JOIN books b ON t.book_id = b.book_id WHERE t.book_id IS NULL;

SELECT * FROM members m LEFT JOIN transactions t ON m.member_id = t.member_id
UNION
SELECT * FROM members m RIGHT JOIN transactions t ON m.member_id = t.member_id;

-- Q-8 USE SUBQUERIES
SELECT * FROM books WHERE book_id IN (SELECT book_id FROM transactions
WHERE member_id IN (SELECT member_id FROM members WHERE membership_date > '2022-12-31')
);

SELECT * FROM books WHERE book_id = (SELECT book_id FROM transactions GROUP BY book_id ORDER BY COUNT(*) DESC LIMIT 1);

SELECT * FROM members WHERE member_id NOT IN (SELECT member_id FROM transactions);

-- Q-9 DATE & TIME FUNCTIONS
SELECT YEAR(published_date) AS publication_year,COUNT(*) AS book_count FROM books GROUP BY YEAR(published_date);

SELECT * DATEDIFF(return_date, borrow_date) AS days_borrowed FROM transactions;

SELECT * DATE_FORMAT(borrow_date, '%d-%m-%Y') AS formatted_date FROM transactions;

-- Q-10 String Manipulation Functions
SELECT UPPER(title) AS Uppercase_Title FROM books;

SELECT TRIM(name) AS Trimmed_Name FROM authors;

SELECT name,REPLACE(email, 'Not Provided') AS Email FROM authors;

-- Q-11 Window Functions
SELECT b.book_id,b.title,COUNT(t.transaction_id) AS borrow_count,RANK() OVER (ORDER BY COUNT(t.transaction_id) DESC) AS book_rank
FROM books b LEFT JOIN transactions t ON b.book_id = t.book_i GROUP BY b.book_id, b.title;

SELECT member_id,borrow_date,COUNT(*) OVER (PARTITION BY member_id ORDER BY borrow_date) AS cumulative_books FROM transactions;

SELECT borrow_month, monthly_borrowed, AVG(monthly_borrowed) OVER (ORDER BY borrow_month ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS moving_average
FROM (SELECT DATE_FORMAT(borrow_date, '%Y-%m') AS borrow_month COUNT(*) AS monthly_borrowed FROM transactions GROUP BY DATE_FORMAT(borrow_date, 
'%Y-%m')) AS monthly_data;

-- Q-12. CASE Expressions
SELECT *,
    CASE
        WHEN MAX(t.borrow_date) >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH)
            THEN 'Active'
        ELSE 'Inactive'
    END AS Membership_Status
FROM members m LEFT JOIN transactions t ON m.member_id = t.member_id GROUP BY m.member_id, m.name;

SELECT *
    CASE
        WHEN published_date > '2020-12-31' THEN 'New Arrival'
        WHEN published_date < '2000-01-01' THEN 'Classic'
        ELSE 'Regular'
    END AS Book_Category
FROM books;