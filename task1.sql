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






    