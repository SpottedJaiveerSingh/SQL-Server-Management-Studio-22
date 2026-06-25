   --Temporary Tables
   Select
   *
   INTO #Orders
   From Sales.Orders;

   Select * 
   From #Orders;

   Delete From #Orders
   Where OrderStatus='Delivered';

    
