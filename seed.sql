DROP DATABASE IF EXISTS huntspointpro;  
CREATE DATABASE huntspointpro;

\c huntspointpro;

CREATE TABLE vendors (
  id SERIAL PRIMARY KEY,
  vendor_name VARCHAR NOT NULL,
  vendor_location VARCHAR NOT NULL,
  avail_prod VARCHAR NOT NULL,
  prod_price INT NOT NULL,
  qty_avail INT
);

CREATE TABLE customers (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR NOT NULL,
  last_name VARCHAR NOT NULL,
  company VARCHAR NOT NULL,
  email VARCHAR UNIQUE NOT NULL,
  qty_ordered INT
);

CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  prod_code VARCHAR NOT NULL,
  prod_cat VARCHAR NOT NULL,
  prod_variety VARCHAR NOT NULL,
  price DECIMAL NOT NULL
);

CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  prod_id VARCHAR NOT NULL,
  customer_id VARCHAR NOT NULL,
  amount DECIMAL NOT NULL
);

INSERT INTO vendors (vendor_name, vendor_location, avail_prod) VALUES
('A&J Produce Corp', '140', '4132'), 
('Food Barn', '31B', '4560'),
('Top Banana', '413-420', '4080')

INSERT INTO customers (first_name, last_name, company, email) VALUES
('John', 'Smith', '129th St Bodega', 'johnsmith@email.com'), 
('Michelle', 'Obama', 'Chicago Deep Dish', 'michelleobama@email.com'),
('Drake', 'Jones', 'Drakes Green Stand', 'drake@email.com')

INSERT INTO orders (customer_id, amount) VALUES 
(1, 356.9),
(3, 87.0),
(2, 22.0),
(1, 6),
(2, 30.05),
(3, 76.20),
(2, 35.4),
(3, 100.00),
(1, 200.01);