CREATE USER 'book_admin'@'localhost' IDENTIFIED BY 'StrongPassword123!';
CREATE USER 'sales_analyst'@'localhost' IDENTIFIED BY 'ReadOnly456!';
CREATE USER 'shipping_clerk'@'localhost' IDENTIFIED BY 'ShipIt789!';

GRANT ALL PRIVILEGES ON bookstore_data.* TO 'book_admin'@'localhost';

GRANT SELECT ON bookstore_data.customer TO 'sales_analyst'@'localhost';
GRANT SELECT ON bookstore_data.cust_order TO 'sales_analyst'@'localhost';
GRANT SELECT ON bookstore_data.order_line TO 'sales_analyst'@'localhost';

GRANT SELECT ON bookstore_data.customer TO 'sales_analyst'@'localhost';
GRANT SELECT ON bookstore_data.cust_order TO 'sales_analyst'@'localhost';
GRANT SELECT ON bookstore_data.order_line TO 'sales_analyst'@'localhost';

GRANT SELECT, UPDATE ON bookstore_data.order_status TO 'shipping_clerk'@'localhost';
GRANT SELECT, INSERT ON bookstore_data.order_history TO 'shipping_clerk'@'localhost';
GRANT SELECT ON bookstore_data.shipping_method TO 'shipping_clerk'@'localhost';
