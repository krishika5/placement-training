USE ORG123;
show tables;
desc worker;
select * from worker;
#MIN
SELECT MIN(salary) AS MinSalary FROM worker;
#max
SELECT MAX(salary) AS MaxSalary FROM worker;
#count
SELECT COUNT(*) AS Totalworker FROM worker;
#avg
SELECT AVG(salary) AS AverageSalary FROM worker;
#sum
SELECT SUM(salary) AS TotalSalary FROM worker;
# find the min salary in hr department 
SELECT MIN(salary) AS MinSalary FROM worker WHERE department = 'HR';
#Find the average salary in the Admin department.
SELECT AVG(salary) AS AverageSalary FROM worker WHERE department = 'Admin';
#Total salary for HR and Admin departments combined
SELECT SUM(salary) AS TotalSalary FROM worker WHERE department IN ('HR', 'Admin');
#Count employees whose first name starts with 'V
SELECT COUNT(*) AS Countworker FROM worker WHERE FIRST_NAME LIKE 'V%';
# Total salary of employees with salary between 50000 and 200000
SELECT SUM(salary) AS TotalSalary FROM worker  WHERE salary BETWEEN 50000 AND 200000;








