USE ORG123;
show tables;
desc worker;
select * from worker;
# Find workers not in HR or Admin with salary between 70000 and 300000
SELECT * FROM worker WHERE department NOT IN ('HR', 'Admin') AND salary BETWEEN 70000 AND 300000;
#Find workers with first name starting with 'V' and salary greater than or equal to 200000.
SELECT * FROM worker WHERE FIRST_NAME LIKE 'V%' AND salary >= 200000;
#Find workers not in Admin with salary < 100000.
SELECT * FROM worker WHERE department <> 'Admin' AND salary < 100000;


