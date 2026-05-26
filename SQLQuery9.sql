--get all customers with the orders but only customers who have placed an order
--dont use inner join. better use the full join now
--remember condition WHERE clause. AND ayega. 
select * from customers
full join orders
on id=customer_id
where id is not  NULL  and customer_id is not NULL