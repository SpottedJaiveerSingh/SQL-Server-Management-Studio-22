--generate all combinations of orders and customers
--cross join BASICALLY CARTESIAN PRODUCT

select * from customers
cross join orders
