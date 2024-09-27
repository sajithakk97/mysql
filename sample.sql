create database employees;
use employees;
drop database employees;
use employees;
create database students;
drop database students;
create table student(id int not null,
name varchar(20) not null,
age int not null,
std int not null);
create table faculty(id int not null,
name varchar(20) not null,
class int not null);
describe student;
describe faculty;
show tables;
alter table student
add subject varchar(20),
add place varchar(20);
alter table student 
modify subject varchar(100) not null;
alter table student 
drop column subject,
drop column mark;
drop table student;
alter table student 
change column place location
varchar(20) not null;
alter table student
rename to students;
alter table students
rename to student;
insert into student values(1,'ram',14,8,'malappuram'),
(2,'joy',12,7,'kkd');
select * from student;
select name from student where id=1;
UPDATE student
SET location='palakkad' WHERE id=1;
create table officers(
officer_id int not null auto_increment,
officer_name varchar(100) not null,
address varchar(100) not null,
primary key(officer_id));
describe officers;
insert into officers (officer_name,address)values('jisha','pkd'),
('manu','ktym');
select * from officers;
update officers set officer_name='akhil'
where officer_id=1;
alter table officers auto_increment=5;
insert into officers (officer_name,address)values('radha','pkd'),
('hilu','tvm');
create table authors(author_id int auto_increment,
	name varchar(30) not null,
    country varchar(30) not null,
    primary key(author_id));
describe authors;

create table books(
	book_id int auto_increment,
    title varchar(30) not null,
    author_id int ,
    foreign key(author_id) references authors(author_id),
    publication_year int not null,
    primary key(book_id));
    
create table Users (
	user_id  int auto_Increment primary key,
	name varchar(255) not Null,
	email varchar(255) Unique Not Null,
	membership_date Date Not Null);
    
create table Loans(
	loan_id  Int Auto_Increment Primary Key,
    book_id int not null,
    user_id int not null,
    foreign key(book_id) references books(book_id),
    foreign key(user_id) references Users(user_id),
    loan_date date not null,
	return_date Date);
    
create table Students(
	student_id Integer Primary Key Auto_Increment,
	name varchar(255) Not Null,
	date_of_birth Date Not Null,
	email varchar(255) Unique Not Null);
create table Courses (
	course_id Integer Primary Key Auto_Increment,
	course_name varchar(255) Not Null,
	credits Int Not Null);
create table Enrollments (
	enrollment_id  Integer Primary Key Auto_Increment,
    student_id  int not null,
    course_id int not null,
	Foreign Key(student_id)references Students(student_id),
	foreign key (course_id )references Courses (course_id),
	enrollment_date Date Not Null);
create table Customers (
	customer_id Integer Auto_Increment Primary Key,
	name varchar(255) not null,
	email varchar(255) not null unique,
	phone varchar(255) not null);
create table Products (
	product_id int Auto_Increment primary key,
	product_name varchar(255) Not Null,
	price Decimal Not Null,
	stock Int Not Null);
create table Orders(
	order_id Integer Auto_Increment primary key,
    customer_id int not null,
	Foreign Key(customer_id) references Customers(customer_id),
	order_date Date Not Null,
	total_amount Decimal Not Null);
create table OrderDetails(
	order_detail_id Int Auto_Increment Primary Key,
    order_id int not null,
    product_id int not null,
	Foreign Key(order_id)references  Orders(order_id), 
	Foreign Key(product_id) references Products (product_id),
	quantity Integer Not Null,
	price Decimal Not Null);
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
update Employees set salary=60000 where employee_id=7;
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





    