-- Create Database
CREATE DATABASE IF NOT EXISTS bookstore_data;
USE bookstore_data;

-- 1. Table: book
CREATE TABLE book (
  book_id INT PRIMARY KEY AUTO_INCREMENT,
  book_name VARCHAR(50) NOT NULL
);

-- 2. Table: author
CREATE TABLE author (
  author_id INT PRIMARY KEY AUTO_INCREMENT,
  author_name VARCHAR(100) NOT NULL
);

-- 3. Table: book_author (Many-to-Many)
CREATE TABLE book_author (
  book_id INT,
  author_id INT,
  PRIMARY KEY (book_id, author_id),
  FOREIGN KEY (book_id) REFERENCES book(book_id),
  FOREIGN KEY (author_id) REFERENCES author(author_id)
);

-- 4. Table: book_language
CREATE TABLE book_language (
  book_id INT PRIMARY KEY,
  language_name VARCHAR(100) NOT NULL,
  FOREIGN KEY (book_id) REFERENCES book(book_id)
);

-- 5. Table: publisher
CREATE TABLE publisher (
  book_id INT PRIMARY KEY,
  publisher_name VARCHAR(100) NOT NULL,
  FOREIGN KEY (book_id) REFERENCES book(book_id)
);

-- 6. Table: customer
CREATE TABLE customer (
  customer_id INT PRIMARY KEY AUTO_INCREMENT,
  customer_firstName VARCHAR(100),
  customer_lastName VARCHAR(100),
  customer_age INT DEFAULT 18,
  customer_subscription VARCHAR(3) NOT NULL
);

-- 7. Table: customer_address
CREATE TABLE customer_address (
  customer_id INT,
  customer_address VARCHAR(100),
  PRIMARY KEY (customer_id, customer_address),
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

-- 8. Table: address_status
CREATE TABLE address_status (
  status_id INT PRIMARY KEY AUTO_INCREMENT,
  status_name VARCHAR(50)
);

-- 9. Table: country
CREATE TABLE country (
  country_id INT PRIMARY KEY,
  country_name VARCHAR(100)
);

-- 10. Table: address
CREATE TABLE address (
  address_id INT PRIMARY KEY,
  country_id INT,
  street VARCHAR(100),
  city VARCHAR(100),
  state_name VARCHAR(100),
  zip_code VARCHAR(100),
  FOREIGN KEY (country_id) REFERENCES country(country_id)
);

-- 11. Table: order_status
CREATE TABLE order_status (
  status_id INT PRIMARY KEY AUTO_INCREMENT,
  status_name VARCHAR(50) NOT NULL
);

-- 12. Table: shipping_method
CREATE TABLE shipping_method (
  method_id INT PRIMARY KEY AUTO_INCREMENT,
  method_name VARCHAR(100) NOT NULL
);

-- 13. Table: cust_order
CREATE TABLE cust_order (
  order_id INT PRIMARY KEY AUTO_INCREMENT,
  customer_id INT,
  order_date DATE,
  total_amount DECIMAL(10,2),
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

-- 14. Table: order_line
CREATE TABLE order_line (
  order_id INT,
  book_id INT,
  quantity INT,
  PRIMARY KEY (order_id, book_id),
  FOREIGN KEY (order_id) REFERENCES cust_order(order_id),
  FOREIGN KEY (book_id) REFERENCES book(book_id)
);

-- 15. Table: order_history
CREATE TABLE order_history (
  history_id INT PRIMARY KEY AUTO_INCREMENT,
  order_id INT,
  status_id INT,
  update_date DATETIME,
  FOREIGN KEY (order_id) REFERENCES cust_order(order_id),
  FOREIGN KEY (status_id) REFERENCES order_status(status_id)
);
