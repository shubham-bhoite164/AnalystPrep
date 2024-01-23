-- Find the employees in each department who earn more than the avg salary in that department

select * from worker w1
where salary > (select avg(salary) from worker w2
				where w1.DEPARTMENT = w2.DEPARTMENT);
                

-- Find employee who do not have bonus
select * from worker w
where not exists (select worker_ref_id from bonus b
					where w.worker_id = b.WORKER_REF_ID);
                    
