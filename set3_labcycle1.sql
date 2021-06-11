create table LOAN_ACCOUNTS (Accno char(4),Cust_name varchar(15),Loan_Amount decimal(15,10),Installments int(50),int_rate decimal(15,10),Start_date DATE,Interest decimal(15,10));
describe loan_accounts;
alter table loan_accounts add column category varchar(20);
alter table loan_accounts modify column loan_amount decimal(30,10);
insert into loan_accounts (accno,cust_name,loan_amount,installments,int_rate,start_date) values (1001,'R.K Gupta',300000.00,36,12.00,'2009-07-19');
select * from loan_accounts;
insert into loan_accounts (accno,cust_name,loan_amount,installments,int_rate,start_date) values (1002,'S.P Sharma',500000.00,48,10.00,'2008-03-22'),
(1003,'K.P Jain',300000.00,36,0,'2007-08-03'),
(1004,'M.P Yadav',800000.00,60,10.00,'2008-06-12'),
(1005,'S.P Sinha',200000.00,36,12.50,'2010-03-01'),
(1006,'P Sharma',700000.00,60,12.50,'2008-05-06'),
(1007,'K.S Dhall',500000.00,48,0,'2008-05-03');
select * from loan_accounts;
update loan_accounts set int_rate = 11.50 where int_rate = 0;
update loan_accounts set int_rate = int_rate+0.5 where loan_amount > 400000;
select * from loan_accounts;
alter table loan_accounts modify column interest float(30);
update loan_accounts set interest = (loan_amount * int_rate * installments)/(1200);
select * from loan_accounts;
delete from loan_accounts where start_date < '2008-01-01';
select * from loan_accounts;
delete from loan_accounts where cust_name like 'k%';
select * from loan_accounts;
select * from loan_accounts where installments <40;
select accno,loan_amount from loan_accounts where start_date <'2009-04-01';
select int_rate from loan_accounts where start_date > '2009-04-01';
select accno,cust_name,loan_amount from loan_accounts where cust_name like '%sharma';
select loan_amount from loan_accounts where cust_name like '%a'; 
select accno,cust_name,loan_amount from loan_accounts where cust_name like '%a%';
select accno,cust_name,loan_amount from loan_accounts where cust_name not like '%p%';
describe loan_accounts;
select * from loan_accounts order by loan_amount asc;
select * from loan_accounts order by start_date desc;
select * from loan_accounts order by loan_amount asc , start_date desc;
select accno,cust_name,loan_amount from loan_accounts where cust_name like 'K%';
select * from loan_accounts where int_rate='null';
select * from loan_accounts where int_rate != 'null';
select distinct loan_amount from loan_accounts;
select * from loan_accounts where start_date > '2008-12-31' and installments >36 ;
select cust_name,loan_amount from loan_accounts where loan_amount < 500000 or int_rate > 12;
select * from loan_accounts where start_date like'2009%';
select * from loan_accounts where loan_amount between 400000 and 500000;
select cust_name,loan_amount from loan_accounts where (installments = 26 or installments=36 or installments =48);
select cust_name,loan_amount,ifnull(int_rate,0) as int_rate from loan_accounts;
select cust_name,loan_amount,ifnull(int_rate,'no interest') as int_rate from loan_accounts;
