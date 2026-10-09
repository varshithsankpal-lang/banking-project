create database banking;
use banking;
create table accounts(
account_id int primary key,
account_type varchar(20),
balance decimal(10,2)
);
create table transactions(
transactionid int,
transactiondate date,
amount decimal(10,2),
transactiontype varchar(20)
);
create table branches (
branchid int,
branchname varchar(200),
branchphone varchar(15)
);
create table accountbranches(
assignmentdate date
);
create table loans(
loanid int,
loanamount decimal(10,2),
interestrate decimal(5,2),
startdate date,
enddate date
);
use banking;
desc accountbranches;
drop table accountbranches;
alter table accounts
rename column account_id to acc_id;
create table customers(
cust_id int primary key,
firstname varchar(50),
lastname varchar(50),
email varchar(50),
phone varchar(20),
dob date
);
alter table accounts
add column cust_id int;
desc accounts;
desc loans;
desc customers;
alter table loans
add column cust_id int ;
alter table loans
add foreign key (cust_id)
references customers(cust_id);
alter table customers
add column acc_id int;
alter table customers 
add foreign key (acc_id)
references accounts (acc_id);
desc branches;
alter table branches 
add column acc_id int;
alter table branches 
add foreign key (acc_id)
references accounts (acc_id);
alter table transactions
add column acc_id int;
desc transactions;
alter table transactions 
add foreign key (acc_id)
references accounts (acc_id);







