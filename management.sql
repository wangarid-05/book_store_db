-- Creating users
CREATE USER 'book_admin'@'localhost' IDENTIFIED BY 'Snowflake123!';
CREATE USER 'sales_analyst'@'localhost' IDENTIFIED BY 'salesrep123!';
CREATE USER 'shipping_rep'@'localhost' IDENTIFIED BY 'orderanalyst123!';

-- database admin
GRANT ALL PRIVILEGES ON bookstore_data.* TO 'book_admin'@'localhost';

-- salesanalyst
GRANT SELECT ON bookstore_data.customer TO 'sales_analyst'@'localhost';
GRANT SELECT ON bookstore_data.cust_order TO 'sales_analyst'@'localhost';
GRANT SELECT ON bookstore_data.order_line TO 'sales_analyst'@'localhost';

-- shippingrep
GRANT SELECT, UPDATE ON bookstore_data.order_status TO 'shipping_rep'@'localhost';
GRANT SELECT, INSERT ON bookstore_data.order_history TO 'shipping_rep'@'localhost';
GRANT SELECT ON bookstore_data.shipping_method TO 'shipping_rep'@'localhost';
