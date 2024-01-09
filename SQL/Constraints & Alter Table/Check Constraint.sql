-- Age must be greater than 18

CREATE TABLE partiers (
  name VARCHAR(50),
  age INT CHECK (age > 18)
);

