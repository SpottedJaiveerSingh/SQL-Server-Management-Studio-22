/* full anti join*/
select * from customers
full join orders
on id=customer_id
where id is NULL  or customer_id is NULL