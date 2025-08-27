USE ORG123;
show tables;
desc worker;
select * from worker;
#IN 
SELECT * FROM worker WHERE department IN ('HR', 'Admin');
#NOT IN 
SELECT * FROM worker WHERE department NOT IN ('HR', 'Admin');
#IN with less than operator
SELECT * FROM worker WHERE salary < ANY (SELECT salary FROM worker WHERE salary IN (200000, 300000, 500000));
#NOTIN with greater than operator
SELECT * FROM worker WHERE salary > ALL (SELECT salary FROM worker WHERE salary NOT IN (75000, 300000,50000));
# IN with AND
SELECT * FROM worker WHERE department IN ('HR', 'Admin') AND salary > 50000;
# NOT IN with OR
SELECT * FROM worker WHERE department NOT IN ('HR', 'Admin') OR salary < 40000;
#NOT with IN
SELECT * FROM worker WHERE NOT department IN ('HR', 'Account');







