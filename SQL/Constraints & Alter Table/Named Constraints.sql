-- We can name the constraints 

CREATE TABLE partiers2 (
  name VARCHAR(50),
  age INT,
  CONSTRAINT age_over_18 CHECK (age > 18)
);

-- Here we named the containt as 'age_over_18'