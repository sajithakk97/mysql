
use employee;
create table Employee(
	id integer primary key,
	name varchar(30) not null,
	department varchar(30),
	salary integer);
insert into Employee values(1,'sajitha','IT',50000),(2,'maneesha','accounts',56000),
(3,'john','IT',45000),(4,'james','testing',150000);
	
select * from Employee where department="IT";
select distinct id,name,department from Employee ;
select id,name,salary from Employee order by name asc;

create table Sales(
	sale_id integer primary key,
	product_name varchar(50),
	quantity integer);
insert into Sales values(101,'headset',25),(102,'phone',56),( 103,'speaker',10),
(104,'watch',70),(105,'keyboard',130),(106,'book',500),(107,'dress',1500),
(110,'mouse',25);
insert into Sales values(108,'headset',250),(109,'phone',5);
select product_name,sum(quantity) from Sales group by product_name;
select product_name,sum(quantity) from Sales group by product_name order by product_name asc;
select  product_name,sum(quantity) as "total_quantity"
from Sales where quantity>50 group by product_name ;
