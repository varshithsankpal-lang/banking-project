use banking;
show tables;

  desc accounts;
  desc customers;
  desc branches;
  
  select c.firstname , a.balance
  from customers c inner join accounts a 
  on c.cust_id = a.cust_id;
  
  select b.branchname , b.branchphone, a.balance
  from branches b inner join accounts a 
  on b.acc_id = a.acc_id;
  
  
  
  select f.firstname, b.branchname , r.balance
  from customers f inner join branches b 
  on f.acc_id = b.acc_id 
  inner join accounts r 
  on b.acc_id = r.acc_id;
  
  
select * from customers;  
SELECT * FROM branches;
SELECT * FROM accounts;
select * from loans;

SELECT
    loanid,
    startdate,
    enddate,
    TIMESTAMPDIFF(MONTH, startdate, enddate) AS tenure_months
FROM loans;
select c.firstname, l.loanamount ,
 TIMESTAMPDIFF(year, startdate, enddate) AS tenure_year
 from customers c inner join loans l
  on c.cust_id = l.cust_id ;
  
 





  
  
  