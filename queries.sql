-- list all books with their authors
USE bookstore_data;
SELECT b.book_name, a.author_name
FROM book b
JOIN book_author ba ON b.book_id = ba.book_id
JOIN author a ON ba.author_id = a.author_id;

-- Books ordered by which customers
SELECT c.customer_firstName, c.customer_lastName, b.book_name, co.order_date
FROM cust_order co
JOIN customer c ON co.customer_id = c.customer_id
JOIN order_line ol ON co.order_id = ol.order_id
JOIN book b ON ol.book_id = b.book_id;

-- total amount by customer
SELECT c.customer_firstName, c.customer_lastName, SUM(co.total_amount) AS total_spent
FROM cust_order co
JOIN customer c ON co.customer_id = c.customer_id
GROUP BY c.customer_id;
