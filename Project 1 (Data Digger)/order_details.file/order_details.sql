USE DataDigger;

CREATE TABLE orderdetails (
    OrderDetailID INT PRIMARY KEY AUTO_INCREMENT,
    OrderID INT NOT NULL,
    ProductID INT NOT NULL,
    Quantity INT NOT NULL,
    SubTotal INT NOT NULL,

    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO orderdetails (OrderID, ProductID, Quantity, SubTotal) VALUES
(7, 1, 1, 55000),
(8, 2, 1, 20000),
(9, 3, 2, 3000),
(10, 4, 3, 3600),
(11, 5, 2, 1600);

SELECT * FROM orderdetails WHERE OrderID = 7;

SELECT SUM(SubTotal) AS TotalRevenue from orderdetails;

SELECT ProductID, COUNT(ProductID) FROM orderdetails GROUP BY ProductID ORDER BY COUNT(ProductID) DESC LIMIT 3;

SELECT COUNT(ProductID) AS Total_Sold FROM orderdetails WHERE ProductID = 1;
