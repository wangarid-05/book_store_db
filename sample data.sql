-- Insert Authors
Use bookstore_data;
INSERT INTO author (author_name) VALUES 
('Jane Austen'),
('Leo Tolstoy'),
('Victor Hugo'),
('Dante Alighieri'),
('Herman Melville');

-- Insert Books
INSERT INTO book (book_name) VALUES 
('Pride and Prejudice'),
('War and Peace'),
('Les Misérables'),
('The Divine Comedy'),
('Moby-Dick');

-- Link Books and Authors (book_author)
INSERT INTO book_author (book_id, author_id) VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- Insert Book Languages
INSERT INTO book_language (book_id, language_name) VALUES 
(1, 'English'),
(2, 'Russian'),
(3, 'French'),
(4, 'Italian'),
(5, 'English');

-- Insert Publishers
INSERT INTO publisher (book_id, publisher_name) VALUES 
(1, 'T. Egerton'),
(2, 'The Russian Messenger'),
(3, 'A. Lacroix, Verboeckhoven & Cie.'),
(4, 'Johann Numeister and Evangelista Angelini'),
(5, 'Harper & Brothers');

-- Insert Countries
INSERT INTO country (country_id, country_name) VALUES
(1, 'United States'),
(2, 'United Kingdom'),
(3, 'France'),
(4, 'Italy'),
(5, 'Russia');

-- Insert Customers
INSERT INTO customer (customer_firstName, customer_lastName, customer_age, customer_subscription) VALUES
('Elizabeth', 'Mwangi', 28, 'YES'),
('KG', 'South Africa', 35, 'YES'),
('Daisy', 'Wangari', 40, 'NO'),
('Dante', 'Alighieri', 32, 'YES'),
('Walter', 'Rickens', 29, 'NO');

-- Insert Customer Addresses
INSERT INTO customer_address (customer_id, customer_address) VALUES
(1, 'Longbourn House, Hertfordshire'),
(2, 'Nevsky Prospect, Saint Petersburg'),
(3, 'Rue de l’Homme Armé, Paris'),
(4, 'Florence Central, Tuscany'),
(5, 'Nantucket Dock, Massachusetts');

-- Insert Addresses
INSERT INTO address (address_id, country_id, street, city, state_name, zip_code) VALUES
(1, 2, 'Longbourn House', 'Hertfordshire', 'England', 'AL5 4DN'),
(2, 5, 'Nevsky Prospect', 'Saint Petersburg', 'Northwestern', '191025'),
(3, 3, 'Rue de l’Homme Armé', 'Paris', 'Île-de-France', '75004'),
(4, 4, 'Florence Central', 'Florence', 'Tuscany', '50122'),
(5, 1, 'Nantucket Dock', 'Nantucket', 'Massachusetts', '02554');

-- Insert Order Statuses
INSERT INTO order_status (status_name) VALUES
('Pending'),
('Shipped'),
('Delivered'),
('Cancelled');

-- Insert Shipping Methods
INSERT INTO shipping_method (method_name) VALUES
('Standard'),
('Express'),
('Overnight');

-- Insert Orders
INSERT INTO cust_order (customer_id, order_date, total_amount) VALUES
(1, '2025-04-01', 19.99),
(2, '2025-04-02', 25.50),
(3, '2025-04-03', 30.00),
(4, '2025-04-04', 22.99),
(5, '2025-04-05', 18.75);

-- Insert Order Lines
INSERT INTO order_line (order_id, book_id, quantity) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1);

-- Insert Order History (1 status per order for simplicity)
INSERT INTO order_history (order_id, status_id, update_date) VALUES
(1, 3, '2025-04-02 10:00:00'), -- Delivered
(2, 2, '2025-04-03 11:00:00'), -- Shipped
(3, 1, '2025-04-03 09:00:00'), -- Pending
(4, 4, '2025-04-04 12:00:00'), -- Cancelled
(5, 3, '2025-04-06 08:30:00'); -- Delivered
