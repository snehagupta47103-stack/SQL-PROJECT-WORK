USE DataDigger;

CREATE TABLE products (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(100) NOT NULL,
    Price INT NOT NULL,
    Stock INT NOT NULL
);

INSERT INTO products (ProductName, Price, Stock) VALUES
('Headphones', 1500, 50),
('Keyboard', 1200, 30),
('Mouse', 800, 0),
('Laptop', 55000, 10),
('Smartphone', 20000, 25);

SELECT * FROM products ORDER BY Price DESC;

UPDATE products SET Price = 25000 WHERE ProductID = 2;

DELETE FROM products WHERE Stock = 0;

SELECT * FROM products WHERE Price BETWEEN 500 AND 2000;

SELECT MAX(Price), MIN(Price) FROM products;
