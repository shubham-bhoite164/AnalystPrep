SELECT CHAR_LENGTH('Hello World');

SELECT author_lname, CHAR_LENGTH(author_lname) AS 'length' FROM books;

SELECT CONCAT(TITLE, 'IS' , CHAR_LENGTH(TITLE), 'CHARACTERS LONG') FROM books;