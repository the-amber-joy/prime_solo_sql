﻿--1.	Which authors are represented in our store?
--SELECT * FROM authors;

--2.	Which authors are also distinguished authors?
--SELECT * FROM distinguished_authors;

--3.	Which authors are not distinguished authors?
--SELECT first_name, last_name FROM authors EXCEPT SELECT first_name, last_name FROM distinguished_authors;

--4.	How many authors are represented in our store?
--SELECT COUNT(id) FROM authors;

--5.	Who are the favorite authors of the employee with the first name of Michael?
--SELECT * FROM employees WHERE first_name = 'Michael';
--This results in one employee whose employee_id is 102
--SELECT * FROM favorite_authors WHERE employee_id = 102;
--This gives Michael's favorite authors_and_titles

--6.	What are the titles of all the books that are in stock today?
-- SELECT distinct books.title FROM daily_inventory 
-- 	JOIN editions 
-- ON daily_inventory.isbn = editions.isbn
-- 	JOIN books
-- ON editions.book_id = books.id
-- 	WHERE is_stocked = true;

--7.	Insert one of your favorite books into the database. Hint: You’ll want to create data in at least 2 other tables to completely create this book.
-- INSERT INTO books (id, title, author_id, subject_id)
-- 	VALUES (42, 'The Hitchhikers Guide To The Galaxy', '42', '15');
-- INSERT INTO authors (id, last_name, first_name)
-- 	VALUES (42, 'Adams', 'Douglas');
-- INSERT INTO stock (isbn, cost, retail, stock)
-- 	VALUES (1400052920, 10, 11.29, 0);

--8.	What authors have books that are not in stock?
-- SELECT DISTINCT authors.first_name, authors.last_name FROM books
-- 	JOIN authors
-- ON books.author_id = authors.id
-- 	JOIN editions
-- ON books.id = editions.book_id
-- 	JOIN stock
-- ON editions.isbn = stock.isbn
-- 	WHERE stock.stock = 0;

--9.	What is the title of the book that has the most stock?
-- SELECT books.title, stock.stock FROM books
-- 	JOIN editions
-- ON books.id = editions.book_id
-- 	JOIN stock
-- ON editions.isbn = stock.isbn
-- 	ORDER by stock.stock desc
-- 	limit 1;



