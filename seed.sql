DROP DATABASE IF EXISTS huntspointpro;  
CREATE DATABASE huntspointpro;

\c huntspointpro;

CREATE TABLE vendors (
  id SERIAL PRIMARY KEY,
  vendor_name VARCHAR NOT NULL,
  vendor_location VARCHAR NOT NULL,
  avail_prod VARCHAR,
  prod_price INT,
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
  price_per_lb DECIMAL 
);

CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  customer_id VARCHAR NOT NULL,
  prod_id VARCHAR NOT NULL,
  qty_ordered INT,
  amount DECIMAL
);

INSERT INTO vendors (vendor_name, vendor_location, avail_prod, prod_price, qty_avail) VALUES
('A&J Produce Corp', '140', '4132', 499, 144),
('Top Banana', '413-420', '4134', 1699, 16);

INSERT INTO customers (first_name, last_name, company, email) VALUES
('John', 'Smith', '129th St Bodega', 'johnsmith@email.com'),
('Michelle', 'Obama', 'Chicago Deep Dish', 'michelleobama@email.com'),
('Drake', 'Jones', 'Drakes Green Stand', 'drake@email.com');

INSERT INTO products (prod_code, prod_cat, commodity, prod_variety, price_per_lb) VALUES
('4132', 'Fruit', 'Apples', 'Gala', 0.86),
('4080', 'Vegetables', 'Asparagus', 'Green', 1.00),
('4560', 'Vegetables', 'Carrots', 'Baby', 0.32);

INSERT INTO orders (customer_id,prod_id, qty_ordered, amount) VALUES 
(1, '4132', 1600, 1376.00),
(3, '4080', 1000, 1000.00),
(2, '4560', 2205, 705.60 );

