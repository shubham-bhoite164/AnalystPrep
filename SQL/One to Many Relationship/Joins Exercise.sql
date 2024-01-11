use cat;

create table student(
	id int primary key auto_increment,
    first_name varchar(20)
);

create table papers(
	title varchar(100),
    grade int,
    student_id int, 
    foreign key (student_id) references student(id)
);

INSERT INTO student (first_name) VALUES 
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);



select first_name,title,grade
from student
join papers on papers.student_id = student.id;


select first_name,title,grade
from student
left join papers on papers.student_id = student.id;


SELECT first_name, IFNULL(title, 'MISSING'), IFNULL(grade, 0)
FROM student
LEFT JOIN papers ON papers.student_id = student.id;


select first_name, ifnull(avg(grade),0) as 'average'
from student
LEFT JOIN papers ON papers.student_id = student.id
group by first_name;




select first_name, ifnull(avg(grade),0) as 'average', 
	case
		when ifnull(avg(grade),0) >=75 then 'PASSING'
        else 'FAILING'
    end AS passing_status
from student 
left join papers on papers.student_id = student.id
group by first_name
order by average desc;


