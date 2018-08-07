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
VALUES ('Apples', 'Produce', 0.35, 8000),
		('Bannana', 'Produce', 0.20, 10000),
		('Apple Juice', 'Grocery', 4.45, 120),
		('Trash Bags', 'Grocery', 5.99, 300),
		('Paper Towels', 'Grocery', 4.25, 600),
		('Milk', 'Grocery', 4.50, 200),
		('Diapers', 'Children', 2.75, 476),
		('Toiler Paper', 'Grocery', 12.99, 575),
		('Baby Wipes', 'Children', 1.50, 423),
		('Shampoo', 'Cosmetics', 5.75, 500),
		('Conditioner', 'Cosmetics', 6.25, 627),
        ('Yoga Mat', 'Sports', 12.75, 150),
		('Flip-Flops', 'Sports', 7.99, 89),
		('Hooded Sweatshirt', 'Clothing', 25.55, 120),
		('Gym Shorts', 'Clothing', 17.88, 250),
		('Cat Food', 'Pet', 7.25, 157),
		('Wet Cat Food', 'Pet', 12.50, 163),
		('Ibuprophen', 'Pharmacy', 4.95, 389),
		('Band Aid', 'Pharmacy', 3.25, 550),
		('Ice Cream', 'Grocery', 3.25, 432);