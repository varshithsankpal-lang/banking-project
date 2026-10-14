SELECT * FROM accounts;
SELECT * FROM branches;
SELECT * FROM loans;
SELECT * FROM transactions;
select * from customers;

select sum(balance) from accounts;

select account_type ,round(avg(balance)),count(acc_id)
from accounts
group by account_type ; 

select acc_id,account_type,balance,avg(balance)
over (partition by account_type ) as average
from accounts;

select acc_id,account_type,balance,rank()
over(partition by account_type order by balance desc) as rnk
from accounts;

select transactionid,transactiondate,transactiontype,amount,sum(amount)
over( order by transactiondate ) as ruuning_total
from transactions; 

select acc_id, transactiontype,amount,rank ()
over( partition by acc_id) as rnk
from transactions;













