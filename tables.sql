 -- Create database
CREATE DATABASE IF NOT EXISTS bookstore_data;
Use bookstore_data;

-- Create Tables
CREATE TABLE book(
  book_id INT PRIMARY KEY AUTOINCREMENT,
  book_name VARCHAR(50) NOT NULL);

CREATE TABLE book_author(
  book_id INT,
  author_id INT PRIMARY KEY AUTOINCREMENT,
  author VARCHAR(100) NOT NULL);


  
