/*joins
inner join - connects common columns of tables
outer join
   left outer join
   right outer join
   full outer join
cross join also known as cartesian join - connecting each row of one table with each table of another table
   eg. student table and course table
   */
   create table student(sid int,sname varchar(25),sdept varchar(25));  
   insert into student values(1,'Arun','cse'),(2,'varun','ece'),(3,'karunya','mech');
create table courses(cid int,cname varchar(25));
insert into courses values(5001,'aiml');
insert into courses values(5002,'data scince');
select * from student cross join courses;

#inner join
#intersection
create table result(sid int,score int);
insert into result values(101,90),(102,85),(107,95);
truncate  table student;
insert into student values(101,'Arun','cse'),(102,'varun','ece'),(103,'karunya','mech');
select * fromstudent;
select* from student;
select * from student inner join result where student.sid= result.sid;
 #natural join
#same column name, same datatype and same data values - these values should match for natural join to work
select * from student natural join result where student.sid= result.sid;
#outer join
#both matched and unmactched data. - 3types
#left outer join- left table+ common column in right table
select * from student left outer join result on (student.sid=result.sid);
# right outer join- right table +common column in left table
select * from student right outer join result on (student.sid=result.sid);
