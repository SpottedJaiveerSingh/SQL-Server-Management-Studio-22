/*left anti join 
get the customers who havent placed any orders*/
select * from customers
left join orders
on id=customer_id
where customer_id is null;
select * from orders;
select * from customers
