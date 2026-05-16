CREATE TABLE Products (
 product_id INT PRIMARY KEY,
 product_name VARCHAR(100),
 stock INT,
 price DECIMAL(10,2)
);

CREATE TABLE Suppliers (
 supplier_id INT PRIMARY KEY,
 supplier_name VARCHAR(100)
);

CREATE TABLE Inventory (
 inventory_id INT PRIMARY KEY,
 product_id INT,
 supplier_id INT,
 quantity INT,
 FOREIGN KEY (product_id) REFERENCES Products(product_id),
 FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id)
);
