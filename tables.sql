 -- Create database
CREATE DATABASE IF NOT EXISTS bookstore_data;
Use bookstore_data;

-- Create Tables
CREATE TABLE book(
  book_id INT PRIMARY KEY AUTOINCREMENT,
  book_name VARCHAR(50) NOT NULL);

CREATE TABLE book_author(
  author_id INT PRIMARY KEY AUTOINCREMENT,
  author_name VARCHAR(100) NOT NULL);

CREATE TABLE book_author (
    book_id INT,
    author_id INT,
    PRIMARY KEY (book_id, author_id),
    FOREIGN KEY (book_id) REFERENCES book(book_id),
    FOREIGN KEY (author_id) REFERENCES author(author_id)
);

CREATE TABLE book_language (
 book_id,
 language_name VARCHAR(100) NOT NULL,
 PRIMARY KEY(book_id),
 FOREIGN KEY(book_id) REFERENCES book(book_id)
);

CREATE TABLE publisher (
 book_id,
 publisher_name VARCHAR(100) NOT NULL,
 PRIMARY KEY(book_id),
 FOREIGN KEY(book_id) REFERENCES book(book_id)
);

CREATE TABLE customer(
 customer_id INT PRIMARY KEY AUTOINCREMENT,
 customer_firstName VARCHAR(100),
 customer_lastName VARCHAR(100),
 customer_age INT DEFAULT(18),
 customer_subscription VARCHAR(3) NOT NULL
 );

CREATE TABLE customer_address(
 customer_id,
 customer_address VARCHAR(40)
 FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
 );

CREATE TABLE address_status(
 status_id INT PRIMARY KEY AUTOINCREMENT NOT NULL,
 status_name VARCHAR(50)
);

CREATE TABLE address(
 country_id,
 address_id INT Primary Key,
 street VARCHAR (100),
 city VARCHAR (100),
 state_name VARCHAR (100),
 zip_code VARCHAR (100),
 FOREIGN KEY (country_id) REFERENCES country(country_id)
);

CREATE TABLE country(
 country_id INT PRIMARY KEY,
 country_name VARCHAR(100)
);

 ---CREATE TABLE cust_order(
 order_id (Primary Key)
 customer_id (Foreign Key referencing customer.customer_id)
 order_date (DATE)
 shipping_method_id (Foreign Key referencing shipping_method.shipping_method_id)
 order_status_id (Foreign Key referencing order_status.order_status_id)
 total_amount (DECIMAL)
);

CREATE TABLE order_line(
 
);

CREATE TABLE shipping_method(
 
);

CREATE TABLE order_history(
 
);

CREATE TABLE order_status(
 
);


