-- Connect to PostgreSQL and use a specific database
\c inventorydb

-- Creating the required table 
CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price NUMERIC(10, 2) NOT NULL,
    quantity INTEGER NOT NULL,
    category VARCHAR(100)
);

-- Inserting the sample prodcut documents
INSERT INTO products (name, description, price, quantity, category)
VALUES
    ('Apple', 'Makes the best phones', 1200.00, 10, 'Electronics'),
    ('Ferrari ','Best cars', 100000.00, 20, 'CARS'),
    ('Amazon', 'Biggest marketplace', 250.00, 15, 'Ecommerces');

-- Executing required queries 
-- Retrieving all products 
SELECT * FROM products;
-- Retrieve products with a price less than 100
SELECT * FROM products
WHERE price < 1300.00;
-- Retrieve products with more than 10 in stock
SELECT * FROM products
WHERE quantity > 10;
-- Update the price of the product 'Laptop' to 299.99
UPDATE products
SET price = 1000.00
WHERE name = 'Apple';
-- Delete the product 'Laptop'
DELETE FROM products
WHERE name = 'Amazon';

