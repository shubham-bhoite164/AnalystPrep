Create database cat;
use cat;

CREATE TABLE cats 
  ( 
     cat_id INT AUTO_INCREMENT, 
     name   VARCHAR(100), 
     breed  VARCHAR(100), 
     age    INT, 
     PRIMARY KEY (cat_id) 
  ); 
  
  DESC cats;
  
  INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);

-- SELECT 
select * from cats;
select name from cats;

-- WHERE
SELECT * FROM cats WHERE age = 4;
SELECT * FROM cats WHERE name ='Egg';
SELECT cat_id,age FROM cats WHERE cat_id = age;

-- Aliases 
SELECT cat_id AS id, name FROM cats;

-- UPDATE
UPDATE cats SET breed='Shorthair' WHERE breed='Tabby';
UPDATE cats SET age=14 WHERE name='Misty';

-- DELETE 
-- Delete all cats with name of 'Egg':
DELETE FROM cats WHERE name='Egg';

-- Delete all rows in the cats table:
DELETE FROM cats;