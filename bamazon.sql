DROP DATABASE IF EXISTS bamazon;

CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products (
    item_id INTEGER(10) AUTO_INCREMENT NOT NULL,
    product_name VARCHAR(80),
    department_name VARCHAR(50),
    price FLOAT(5,2),
    stock_quantity INTEGER(5),
    PRIMARY KEY (item_id)
);

INSERT INTO products (product_name,department_name,price,stock_quantity)
VALUES (