USE DataDigger;

CREATE TABLE orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    cust_id INT NOT NULL,
    OrderDate DATE NOT NULL,
    TotalAmount INT NOT NULL,
    FOREIGN KEY (cust_id) REFERENCES customers(cust_id)
);

INSERT INTO orders (cust_id, OrderDate, TotalAmount) VALUES
(1,'2026-08-01',2500),
(2,'2026-08-02',1800),
(3,'2026-08-03',3200),
(4,'2026-08-04',1500),
(5,'2026-08-05',4500);

SELECT * FROM orders WHERE cust_id = 2;

UPDATE orders SET TotalAmount = 3000 WHERE OrderID = 6;

DELETE FROM orders WHERE OrderID = 6;

SELECT * FROM orders WHERE OrderDate >= CURDATE() - INTERVAL 30 DAY;

SELECT MAX(TotalAmount), MIN(TotalAmount), AVG(TotalAmount) FROM orders;