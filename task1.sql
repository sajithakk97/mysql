use employees;
create table officers(
officer_id int not null auto_increment,
officer_name varchar(100) not null,
address varchar(100) not null,
primary key(officer_id));
describe officers;
insert into officers (officer_name,address)values('jisha','pkd'),
('manu','ktym');
insert into officers (officer_name,address)values('james','tvm'),('john','ktym'),
('james','mlpm'),('manu','pkd'),('sajitha','mlpm');

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

select distinct address from officers where officer_id>5;
select officer_id,officer_name from officers order by address;
select officer_name,address from officers where address='tvm' or address='pkd' order by officer_id desc;
select count(distinct address) from officers;
select count(*) from officers where address='ktym';
select count(*),address from officers group by address;
create table employee(
	emp_id integer primary key,
    emp_name varchar(30)
    );
insert into employee values(1,'ajeet'),(2,'ayan'),(3,'milan'),(4,'ruchi');
create table work(
	working_date date,
    working_hrs integer,
	emp_id integer,
    foreign key(emp_id) references employee(emp_id));

insert into work values('2024-09-23',10,1),('2024-09-23',12,2),('2024-09-23',6,3),
('2024-09-23',8,4),('2024-09-24',10,1),('2024-09-24',12,2),('2024-09-24',6,3),
('2024-09-24',8,4);
insert into work values('2024-09-25',14,1);
insert into work values('2024-09-25',2,2);
select emp_id ,sum(working_hrs) as "total_working_hrs" from work group by emp_id;
select emp_id ,max(working_hrs) as "maximum_working_hrs" from work group by emp_id;
select emp_id,min(working_hrs) as "minimum_working_hrs_" from work group by emp_id;



    