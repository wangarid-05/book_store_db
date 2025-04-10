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
 FOREIGN KRY (customer_id) REFERENCES customer(customer_id)
 );

CREATE TABLE address_status(
 
);

CREATE TABLE address(
 
);

CREATE TABLE country(
 
);

CREATE TABLE cust_order(
 
);

CREATE TABLE order_line(
 
);

CREATE TABLE shipping_method(
 
);

CREATE TABLE order_history(
 
);

CREATE TABLE order_status(
 
);


