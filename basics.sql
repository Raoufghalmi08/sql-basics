



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
select count(*)
as number_of_employees from employees ;
select count(*) as number_of_it_employees from employees where department='it';
select sum(salary)
from employees 
where department='IT';
select AVG(salary)
from employees 
where department='IT';
select max(salary)
as max_salary 
from employees
where department='IT';
select min(salary)
as min_salary 
from employees
where department='IT';
select department,sum(salary)
as sum_salary_by_department 
from employees 
group by department ;
select 
department,
count(*) as number_of_employees_by_department,
AVG(salary) as average_salary_by_department ,
max(salary) as max_salary_by_department,
min(salary) as min_salary_by_department 
from employees
group by department 
having count(*)>2;
select
department ,count(*) 
from employees 
where salary >40000 
group by department 
having count(*)>=2;
select department ,
AVG(salary)
from employees 
group by department 
having avg(salary) > 50000
order by avg(salary) desc;
select name , salary ,
case 
when salary >=60000 then 'high'
else 'low'
end as salary_category
from employees ;
select name,age,
case 
when age >= 25 
then 'old'
else 'young'
end as age_category 
from employees; 
