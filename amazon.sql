CREATE DATABASE bamazon;

CREATE TABLE products (
	id INTEGER AUTO_INCREMENT NOT NULL,
    product_name VARCHAR(255),
    department_name VARCHAR(255),
    price DECIMAL(10,2) NULL,
    stock_quantity INTEGER NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Eggs", "grocery", "0.98" , "100" );
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Pear", "produce", "1.98" , "250" );
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Green leaf lettuce", "produce", "0.97" , "150" );
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Grapes", "produce", "2.97" , "50" );
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Lays Chips", "grocery", "3.98" , "150" );
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Reeces", "grocery", "2.98" , "20" );
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Bread", "grocery", "1.98" , "100" );
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Cereal", "grocery", "2.49" , "300" );
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("oreos", "grocery", "3.98" , "75" );
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Chocolate chip muffins", "grocery", "4.98" , "70" );
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("yogurt", "frozen", "0.50" , "100" );
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Hotdogs", "meat", "2.98" , "100" );