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
  cust_address VARCHAR NOT NULL,
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
('Guelson', NULL, ' drake@email.com', 'California'),
('Micheal B.', 'Jordan', 'michealbjordan@email.com', 'California'),
('Micheal', 'Jordan', 'jumpman@email.com', 'Chicago'),
('Lebron', 'James', 'lebronjames@email.com', 'Cleveland');

INSERT INTO orders (customer_id, amount) VALUES 
(2, 356.9),
(10, 87.0),
(10, 22.0),
(3, 6),
(4, 30.05),
(2, 76.20),
(2, 35.4),
(4, 100.00),
(4, 200.01),
(6, 999.99),
(3, 666);

DROP DATABASE IF EXISTS petpedia;  
CREATE DATABASE petpedia;

\c petpedia;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR NOT NULL,
  email VARCHAR NOT NULL
);

CREATE TABLE pets (
  id SERIAL PRIMARY KEY,
  owner INT REFERENCES users(id) NOT NULL,

  type VARCHAR NOT NULL,
  name VARCHAR NOT NULL,
  age INT
);

INSERT INTO users (name, email) VALUES
('John', 'john@email.com'), ('Michelle', 'michelle@email.com');

INSERT INTO pets (owner, type, name, age) VALUES
(2, 'bunny', 'Marshmello', 1), (2, 'dog', 'Chai', 2), (1, 'cat', 'Pixel', 5);