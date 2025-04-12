-- Sample Data Inserts for Classical Literature
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
(1, 1), -- The Iliad - Homer
(2, 2), -- The Aeneid - Virgil
(3, 3), -- The Divine Comedy - Dante
(4, 4), -- Candide - Voltaire
(5, 5); -- Hamlet - Shakespeare

-- Publishers
INSERT INTO publisher (book_id, publisher_name) VALUES
(1, 'Penguin Classics'),
(2, 'Oxford University Press'),
(3, 'La Nuova Italia'),
(4, 'Gallimard'),
(5, 'Cambridge University Press');

-- Customers
INSERT INTO customer (customer_firstName, customer_lastName, customer_age, customer_subscription) VALUES
('Sophia', 'Athena', 28, 'YES'),
('Lucius', 'Seneca', 35, 'YES'),
('Giovanni', 'Medici', 40, 'NO'),
('Marie', 'Beaumont', 30, 'YES'),
('Edward', 'Milton', 45, 'NO');
