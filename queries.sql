INSERT INTO Products VALUES (1,'Laptop',20,55000);

SELECT * FROM Products;

UPDATE Products
SET stock = stock - 2
WHERE product_id = 1;

SELECT p.product_name,i.quantity
FROM Products p
INNER JOIN Inventory i
ON p.product_id=i.product_id;

SELECT product_name,stock
FROM Products
ORDER BY stock ASC;
