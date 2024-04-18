use 30daysofsql;
drop table if exists  student_tests;
create table student_tests
(
	test_id		int,
	marks		int
);
insert into student_tests values(100, 55);
insert into student_tests values(101, 55);
insert into student_tests values(102, 60);
insert into student_tests values(103, 58);
insert into student_tests values(104, 40);
insert into student_tests values(105, 50);

select * from student_tests;

-- Output 1
select test_id, marks from (
select*, 
lag(marks,1,0) over(order by test_id) as prevmarks
from student_tests) as x
where x.marks > x.prevmarks;

-- Output 2
select test_id, marks from (
select*, 
lag(marks,1,marks) over(order by test_id) as prevmarks
from student_tests) as x
where x.marks > x.prevmarks;




