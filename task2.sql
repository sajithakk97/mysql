create database employee;
use employee;
create table Employees(
employee_id int Primary key AUTO_INCREMENT,
first_name VARCHAR(30),
last_name VARCHAR(30),
salary INT,
department VARCHAR(30));
Insert into Employees(first_name,last_name ,salary,department) values
('jisha','rose',20000,'finance'),
('maneesha','manu',50000,'testing'),
('sono','jaish',45000,'developer'),
('rashi','marie',67000,'testing'),
('sajitha','saju',56000,'developer'),
('ram','james',75000,'developer'),
('sandra','roy',67000,'finance');

select department from Employees;
Select * from employees;
alter table Employees add date_of_joining date;
update Employees set salary=60000 where employee_id=1;
update Employees set salary=60000 where employee_id=2;
update Employees set salary=60000 where employee_id=3;
update Employees set salary=60000 where employee_id=4;
update Employees set salary=60000 where employee_id=5;
update Employees set salary=60000 where employee_id=6;
update Employees set salary=70000 where department='developer';
Select * from Employees where salary >60000;
Drop table Employees;
Create Table Customers (
	customer_id int primary key,
    name varchar(30),
    email varchar(50), 
    phone varchar(50));
create table Orders (
	order_id int primary key,
    order_date date,
    amount int,
    customer_id int,
    foreign key(customer_id) references Customers(customer_id));

insert into Customers values(1,'sajitha','sajitha@gmail.com',9495234567);
insert into Customers values(2,'james','james@gmail.com',9495123457),
	(3,'john','john@gmail.com',4567123457);
insert into Orders values(101,'2024-09-13',256,2),
(145,'2023-09-22',789,1),
(155,'2024-08-02',2089,3),
(105,'2024-02-12',545,1),
(104,'2024-01-11',1789,2);
select name,amount from Customers join Orders on Customers.customer_id=Orders.customer_id;
insert into Customers values(4,'alice','alice@gmail.com',8976234567);
insert into Orders values(111,'2024-09-13',200,4),(121,'2024-09-13',160,4);
update Orders set amount=amount+(amount*.1) where customer_id=4;
delete from Orders where amount<150;
select * from Orders where order_id=105 and customer_id=1;
select * from Orders where order_id=101 or customer_id=3;
select distinct customer_id from Orders;
select distinct customer_id,amount from Orders;
select * from Customers order by name;
select * from Customers order by name desc;
select * from Orders where amount>500 order by customer_id desc;
select * from Orders order by amount asc, customer_id desc;
select * from Customers;
select * from employees order by age limit 1 ;
select * from employees order by age limit 2,4;
select first_name,dept from employees where dept like 'a%';
select * from employees;
select first_name,last_name from employees where first_name like'j_h%';
select * from employees where dept like '%a';
select * from employees where last_name like 'J__%';
select * from employees where last_name like 'L%' or first_name like '%y';
select * from employees where last_name like 'g%a';
select * from employees where  last_name not like '%a';
select * from employEes where age in (30,27,37);
select * from employees where age is null;
select * from employees where dept is not null;
select * from employees where age between 30 and 40;

