Create table numbers (
x float,
y double
);

insert into numbers(x,y) values(1.1235678,1.1235678);
select * from numbers;

-- The float has precision till 7 digits and float has precision till 15 digits.
-- After this there are chances of changing the data