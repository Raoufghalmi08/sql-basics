
CREATE TABLE employees ( 
id integer ,
name TEXT ,
age integer ,
salary numeric,
department text
);
Insert into employees
(id,name,age,salary,department)
Values 
(1,'ali',23,54000,'IT'),
(2,'sara',32,110000,'HR'),
(3,'mohamed',20,34000,'IT'),
(4,'raouf',24,50000,'IT');
select * from employees ;
select name from employees;
select name from employees
where age >24
and salary > 50000;
select name from employees 
order by salary desc;
select name,age from employees 
order by salary 
limit 2;