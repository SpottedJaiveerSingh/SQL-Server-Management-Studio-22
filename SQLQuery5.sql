--task: get all the customers along with their orders,
--including orders without matching customers using left join
select * from orders
left join customers
on orders.customer_id=customers.id
