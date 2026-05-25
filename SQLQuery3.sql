select * from customers;
select * from orders;
--left join-- get the customers who have placed orders or not placed orders
select * from customers as c
left join orders as o
on c.id=o.customer_id