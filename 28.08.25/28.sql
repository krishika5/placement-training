USE ORG123;
show tables;
desc worker;
select * from worker;
# assending order
select * from worker where DEPARTMENT='Admin' order by salary asc;
select * from worker where JOINING_DATE='14-02-20 09.00.00' order by salary asc;

#group by
select department, count(department) from worker group by DEPARTMENT;
select DEPARTMENT,count(JOINING_DATE) from worker group by DEPARTMENT;


#order by
select department, count(department) from worker group by DEPARTMENT order by DEPARTMENT asc;
select department, sum(SALARY) from worker group by DEPARTMENT order by DEPARTMENT asc;
select department,min(salary) from worker group by department order by department desc;
#Count employees not in HR or Admin
select department, count(department) from worker where department  not in ('hr', 'admin') group by department;
# Find the highest salary in each department
select department, max(salary) from worker group by department order by department asc;
# limiting and skipping 

SELECT * FROM Worker ORDER BY WORKER_ID LIMIT 3 OFFSET 5;
# HAVING
select department, sum(salary) from  worker group by DEPARTMENT having sum(salary)>100000;
# Find departments with average salary > 100000.
select department, avg(salary) from worker group by department having avg(salary)>100000;
#Find departments where max salary is exactly 500000.
select department, max(salary) from worker group  by department having max(salary)=500000;
# Find departments with more than 1 employee and total salary > 100000.
select department, count(*) , sum(salary) from worker group by department having count(*) > 1 and  sum(salary)>100000;
#Find departments with avg salary between 50000 and 200000
select department, avg(salary) from worker group by department having avg(salary) between 50000 and 200000;

 
create table UGC
(id int,
name varchar(25));
insert into UGC value (101,'tamil'),(100002,'logesh'),(105,'ram');
select * from UGC; 
truncate TABLE UGC;
select *from sathyabama;
select* FROM UGC WHERE id=(select id from sathyabama where name =ram);