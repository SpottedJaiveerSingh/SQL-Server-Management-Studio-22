--inner join-- get the customers who have placed an order
select
	c.id,
	c.first_name,
	o.order_id,
	o.order_date
from customers as c
inner join orders as o
on c.id=o.customer_id