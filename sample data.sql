-- Sample Data Inserts for Classical Literature and Related Tables

-- Languages
INSERT INTO book_language (book_id, language_name) VALUES
(1, 'Greek'),
(2, 'Latin'),
(3, 'Italian'),
(4, 'French'),
(5, 'English');

-- Authors
INSERT INTO author (author_name) VALUES
('Homer'),
('Virgil'),
('Dante Alighieri'),
('Voltaire'),
('William Shakespeare');

-- Books
INSERT INTO book (book_name) VALUES
('The Iliad'),
('The Aeneid'),
('The Divine Comedy'),
('Candide'),
('Hamlet');

-- Book-Author Relationships
INSERT INTO book_author (book_id, author_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- Publishers
INSERT INTO publisher (book_id, publisher_name) VALUES
(1, 'Penguin Classics'),
(2, 'Oxford University Press'),
(3, 'La Nuova Italia'),
(4, 'Gallimard'),
(5, 'Cambridge University Press');

-- Countries
INSERT INTO country (country_id, country_name) VALUES
(1, 'Greece'),
(2, 'Italy'),
(3, 'France'),
(4, 'United Kingdom'),
(5, 'Germany');

-- Address Statuses
INSERT INTO address_status (status_name) VALUES
('Current'),
('Old');

-- Customers
INSERT INTO customer (customer_firstName, customer_lastName, customer_age, customer_subscription) VALUES
('Sophia', 'Athena', 28, 'YES'),
('Lucius', 'Seneca', 35, 'YES'),
('Giovanni', 'Medici', 40, 'NO'),
('Marie', 'Beaumont', 30, 'YES'),
('Edward', 'Milton', 45, 'NO');

-- Customer Addresses
INSERT INTO customer_address (customer_id, customer_address) VALUES
(1, '12 Acropolis Way'),
(2, '9 Senate Lane'),
(3, '45 Florence Blvd'),
(4, '21 Rue de Voltaire'),
(5, '3 Tudor Street');

-- Addresses
INSERT INTO address (address_id, country_id, street, city, state_name, zip_code) VALUES
(1, 1, '12 Acropolis Way', 'Athens', 'Attica', '10558'),
(2, 2, '9 Senate Lane', 'Rome', 'Lazio', '00184'),
(3, 2, '45 Florence Blvd', 'Florence', 'Tuscany', '50122'),
(4, 3, '21 Rue de Voltaire', 'Paris', 'Île-de-France', '75011'),
(5, 4, '3 Tudor Street', 'London', 'England', 'EC4Y');

-- Shipping Methods
INSERT INTO shipping_method (method_name) VALUES
('Standard'),
('Express'),
('International');

-- Order Statuses
INSERT INTO order_status (status_name) VALUES
('Pending'),
('Shipped'),
('Delivered'),
('Cancelled');

-- Orders
INSERT INTO cust_order (customer_id, order_date, total_amount) VALUES
(1, '2025-04-01', 29.99),
(2, '2025-04-02', 45.00),
(3, '2025-04-03', 39.50);

-- Order Lines
INSERT INTO order_line (order_id, book_id, quantity) VALUES
(1, 1, 1),
(1, 2, 1),
(2, 3, 2),
(3, 5, 1);

-- Order History
INSERT INTO order_history (order_id, status_id, update_date) VALUES
(1, 1, '2025-04-01 10:00:00'),
(1, 2, '2025-04-02 14:30:00'),
(2, 1, '2025-04-02 08:15:00'),
(3, 1, '2025-04-03 09:45:00');
