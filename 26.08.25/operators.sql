USE ORG123;
show tables;
desc worker;
select * from worker;
#relational operator
#equal to(=)
SELECT * FROM worker WHERE salary = 500000;
#not equal to(<>)
SELECT * FROM worker WHERE department <> 'HR';
# greater than
SELECT * FROM worker WHERE salary > 300000;
#Less than (<)
SELECT * FROM worker WHERE salary < 300000;
#Greater than or equal to (>=)
SELECT * FROM worker WHERE salary >= 60000;
#less than or equal to (<=)
SELECT * FROM worker WHERE salary <= 75000;
# Logical operator
#AND operator
SELECT * FROM worker WHERE department = 'Account' AND salary >=200000;
#or operator
SELECT * FROM worker WHERE department = 'HR' OR department = 'Account';
# NOT operator
SELECT * FROM worker WHERE NOT department = 'HR';
# In operator
SELECT * FROM worker WHERE department IN ('HR', 'Account');
#Between operator
SELECT * FROM worker WHERE salary BETWEEN 200000 AND 500000;
#like operator
SELECT * FROM worker WHERE First_Name LIKE 'v%';
# IS NULL
SELECT * FROM worker  WHERE worker_id IS NULL;




















