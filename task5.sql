create database task5;
use task5;
create table departments(
	dept_id integer primary key,
	dept_name varchar(30));
create table employees(
	emp_id integer primary key,
	emp_name varchar(30),
	dept_id integer,
	foreign key(dept_id)references departments(dept_id),
	salary integer,
	hire_date Date,
	email varchar(100));
describe table employees;
select * from employees order by salary desc limit 5;
select * from employees where emp_name like 'A%';
select * from employees where dept_id in (101,102,103);
select * from employees where email is null;
select * from employees where email is not null;
select * from employees where salary between 50000 and 100000;
select * from employees where emp_name regexp 'e.n';
select employees.emp_name,department.dept_name from employees inner join department 
	on empolyees.dept_id=department.dept_id;
select employees.*,department.dept_name from employees left join department
	on department.dept_id=employees.dept_id;
select employees.*,department.dept_name from employees inner join department on department.dept_id=employees.dept_id 
	where department.dept_id=104 and salary between 60000 and 90000 and email is not null;
select * from employees order by salary desc limit 6,5;




1: Objective: Retrieve the first 5 employees with the highest salary.
2:Objective: Fetch all employees whose name starts with "A".
3: Objective: Fetch all employees who belong to department 101, 102, or 103.
4: Use the IS NULL and IS NOT NULL operators
Objective: Fetch all employees who have not provided an email address.
Objective: Fetch all employees who have provided an email address.
5:Objective: Fetch all employees whose salary is between 50000 and 100000.
6: Use the REGEXP (Regular Expression) operator
Objective: Fetch all employees whose name contains the letter "e" followed by any character 
and then the letter "n".
7: Fetch employee names along with their department names.
8: Use LEFT JOIN to find employees without a department
Objective: Fetch all employees, including those who don’t belong to any department.
9:Fetch all employees from department 101 whose salary is between 60000 and 90000 and 
have provided an email.
10: Fetch the next 5 employees, starting from the 6th highest-paid employee. 


