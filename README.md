# book_store_db

Bookstore Database Management System
Overview
In this project, you'll step into the role of a database administrator tasked with building a MySQL database to store and manage data for a Bookstore. By applying your skills in database design, table creation, data loading, and user management, you'll develop an organized system for this important real-world application. This hands-on project provides valuable experience in efficiently structuring databases to handle large, complex data.

Tools and Technologies
MySQL: For building and managing the database.

Draw.io: For visualizing the database schema and relationships.

Prerequisites
To successfully complete this project, you should be comfortable with:

Understanding the basics of MySQL.

Creating tables in MySQL with the appropriate data types.

Managing MySQL users and applying security best practices.

Project Objective
The goal of this project is to design and implement a relational database system to manage information about a bookstore’s operations. This includes managing data about books, authors, customers, orders, shipping methods, and more. The system should allow for efficient storage and retrieval of data, supporting various business processes such as order processing and customer management.

Step-by-Step Instructions
Create a new database to store the bookstore data.

Design the table schema and decide on the appropriate data types for each table.

Write SQL commands to create the necessary tables that match the defined schema.

Set up user groups and roles to control access to the database.

Test the database by running queries to retrieve and analyze the data.

Expected Outcomes
By completing this SQL project, you will gain practical experience and valuable, transferable skills, including:

Designing and implementing a MySQL database for a real-world use case.

Creating tables with the optimal schema and data types.

Managing database access through user groups and roles.

Querying the data to extract meaningful insights.

Tables to Be Created
Here are the key tables that you'll design and implement for the bookstore database:

book: A list of all books available in the store.

book_author: A table to manage the many-to-many relationship between books and authors.

author: A list of all authors.

book_language: A list of the possible languages of books.

publisher: A list of publishers for books.

customer: A list of the bookstore's customers.

customer_address: A list of addresses for customers (each customer can have multiple addresses).

address_status: A list of statuses for an address (e.g., current, old).

address: A list of all addresses in the system.

country: A list of countries where the addresses are located.

cust_order: A list of orders placed by customers.

order_line: A list of books that are part of each order.

shipping_method: A list of possible shipping methods for an order.

order_history: A record of the history of an order (e.g., ordered, cancelled, delivered).

order_status: A list of possible statuses for an order (e.g., pending, shipped, delivered).

How to Submit
The group leader should create a GitHub repository and push the project files.

Deadline: 13/04/2025, 11:59 pm EAT.

Submit the GitHub repository link on the assigned submission platform.
