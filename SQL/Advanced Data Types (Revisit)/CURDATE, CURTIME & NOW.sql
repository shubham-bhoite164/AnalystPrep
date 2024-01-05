select curtime(); -- It'll give you current time 
select curdate(); -- It'll give you current date 
select now(); --  It'lll give you current date & time


CREATE TABLE people (
	name VARCHAR(100),
    birthdate DATE,
    birthtime TIME,
    birthdt DATETIME
);
 
INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Elton', '2000-12-25', '11:00:00', '2000-12-25 11:00:00');
 
INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Lulu', '1985-04-11', '9:45:10', '1985-04-11 9:45:10');
 
INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Juan', '2020-08-15', '23:59:00', '2020-08-15 23:59:00');

-- Let's say Vartika was boned just now 
INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Vartika', curdate(), curtime(), now());

select * from people;