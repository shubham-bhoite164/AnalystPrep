USE book_shop;

SELECT SUBSTRING('Hello World', 1, 4); -- Hell
SELECT SUBSTRING('Hello World', 2, 9); -- ello Worl

SELECT SUBSTRING('Hello World', 7); -- World

SELECT SUBSTRING('Hello World', -3); -- rld  Will print the last characters

SELECT title from books;