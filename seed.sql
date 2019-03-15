DROP DATABASE IF EXISTS huntspointpro;
CREATE DATABASE huntspointpro;

\c huntspointpro;

CREATE TABLE vendors (
    id SERIAL PRIMARY KEY,
    vendor_name VARCHAR NOT NULL,
    vendor_address VARCHAR NOT NULL,
    vendor_email VARCHAR UNIQUE NOT NULL,
    vendor_phone VARCHAR NOT NULL
);

CREATE TABLE customers (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR NOT NULL,
  last_name VARCHAR NULL,
--   cust_address VARCHAR NOT NULL,
  email VARCHAR UNIQUE NOT NULL,
  cust_businesss VARCHAR NULL
);

CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  customer_id INT NULL,
  amount DECIMAL NOT NULL
);

INSERT INTO customers (first_name, last_name, email, city) VALUES
('John', 'Smith', 'johnsmith@email.com', 'East Harlem Bodega), 
('Michelle', 'Obama', 'michelleobama@email.com', 'Chicago Deep Dish'),
('Guelson', NULL, 'guelson@email.com', 'Fruit stand 175th St');

-- INSERT INTO orders (customer_id, amount) VALUES 
-- (1, 356.9),
-- (2, 87.0),
-- (3, 22.0),

