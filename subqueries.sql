use banking;
show tables;
desc accounts;
desc branches;
select  * from customers;
alter table customers
add column age int;

select timestampdiff(year,dob,current_date()) from customers;
set sql_safe_updates=0;

update customers
set age=timestampdiff(year,dob,current_date());

select avg(age) as avg_age 
from customers;

select * from customers
where age>(select avg(age) from customers);

select * from customers
where age>(select avg(age) from customers)
order by  age desc
limit 100 offset 2;

select * from accounts ;
select * from customers;
select * from branches;

select * from transactions; 
select * from branches;

 












