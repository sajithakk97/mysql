create database task6;
use task6;
create table Loans(
	Acc_no integer primary key,
    cust_name varchar(30) ,
    loan_amount integer,
    installments integer,
    interest_rate float,
    start_date date,
    interest integer);

alter table Loans modify Acc_no integer auto_increment ;
insert into Loans (cust_name,loan_amount ,installments,interest_rate,start_date ,interest)
	values('R.K Gupta',300000,36,12.00,'2009-07-19',1200);
insert into Loans (cust_name,loan_amount ,installments,interest_rate,start_date ,interest)
	values('S.P Sharma',500000,48,10.00,'2008-03-22',1800),
    ('M.P Yadav',800000,60,10.00,'2008-12-06',2250),('S.P Sinha',200000,36,12.50,'2010-01-03',4500),
    ('S.P Sharma',700000,60,12.50,'2008-06-05',3500);
insert into Loans (cust_name,loan_amount ,installments,start_date ,interest)
	values ('K.P Jain',300000,36,'2007-03-08',1600);
insert into Loans (cust_name,loan_amount ,installments,start_date ,interest)
	values('K.S Dhall',500000,48,'2008-03-05',3800);
select * from Loans;
select Acc_no, cust_name, loan_amount from Loans;
select* from Loans where installments<40;
select acc_no ,loan_amount from Loans where start_date<'2009-04-01' ;  
select interest_rate from Loans where start_date>'2009-04-01';
select * from Loans where interest_rate is null;
select * from Loans where interest_rate is not null; 
select distinct loan_amount from Loans;
select distinct installments from Loans;
select * from Loans where start_date>'2008-12-31' and installments>36;
select cust_name,loan_amount from Loans where installments<>36;
select cust_name,loan_amount from Loans where loan_amount< 500000 or interest_rate > 12;
select * from Loans where loan_amount between 400000 and 500000;
select * from Loans where interest_rate  between 11 and 12;
select cust_name,loan_amount from Loans where installments in( 24, 36, 48);
select Acc_no, cust_name,loan_amount from Loans where cust_name like '%Sharma';
select Acc_no, cust_name,loan_amount from Loans where cust_name like '%a';
select Acc_no, cust_name,loan_amount from Loans where cust_name like '%a%';
select Acc_no, cust_name,loan_amount from Loans where cust_name not like '%P%';
select Acc_no, cust_name,loan_amount from Loans where cust_name not like '%a_';
select * from Loans order by loan_amount; 
select * from Loans order by start_date desc; 
update Loans set interest_rate=11.50 where interest_rate is null;
update Loans set interest_rate=interest_rate+.5 where loan_amount>400000;
Update Loans SET Interest=(loan_amount*interest_rate*installments) /12*100;
select * from Loans;
delete  from Loans where cust_name='K.P Jain';
alter table Loans add new_column char (1);
select sum(loan_amount) from Loans where interest_rate>10;
select max(interest) as maximum_interest from Loans;
select count(*) from Loans where cust_name like '%sharma';
select count(*) from Loans where interest is null;

Select * from Loans Group By interest;
select * from Loans order by interest_rate,cust_name;
select count(*) from Loans  group by interest having installments>5;
select * from Loans  group by interest having installments>=10;

26................ 33,34,35

