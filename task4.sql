use employee;
create table Country(
	country_id integer primary key,
    country_name varchar(30),
    region_id integer);
create table Jobs(
	job_id integer primary key,
    job_title varchar(30) default 'blank',
    min_salary integer default 8000 ,
    max_salary integer default NULL);
select * from Customers where city='Berlin';
select * from Customers order by city desc;
select * from Customers where city='Berlin' or city='London';
create table employees(
    first_name varchar(30) ,
    last_name varchar(30) ,
    age integer,
    dept varchar(30));
insert into employees values ( 'Mesa','Loop',30,'Acct') ,
	('Smith','Oak',27,'Devl'),('John','Jorz',37,'QA'),('Hary','Gaga',32,'QA');
    
select concat(first_name,' ', last_name) from  employees where age>30;

create table Item(
    item_id integer,
    item varchar(20),
    price integer);
insert into Item values(1001,'Book',1200),(1002,'Pen',930),(1003,'Bag',1430),
	(1004,'Copy',1030); 
select item id, item, price from Item order by price desc limit 1;
create table department(
	id integer primary key auto_increment,
    name varchar(30),
    department varchar(30),
	age integer); 
select * from department where department='CS' or department='IT';
(select salary from employee order by salary limit n,1)union
	(select salary from employee order by salary desc limit n,1);
DELETE e1 FROM employees e1 JOIN employees e2 ON e1.name = e2.name
	AND e1.email = e2.email
	AND e1.id > e2.id;

Write a mysql statement to find the concatenated first_name, last_name where age of 
the employee is greater than 30.
Write a mysql statement to get item id, item, price of the most expensive item.
Write a mysql statement to select data of only CS OR IT departments