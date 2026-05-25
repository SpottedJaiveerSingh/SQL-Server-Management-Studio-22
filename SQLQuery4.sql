--right join-- get the orders who have placed by the customers existing or not existing
select * from customers as c
right join orders as o
on c.id=o.customer_id
select * from orders