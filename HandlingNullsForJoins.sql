--handling nulls for the joins
--basically what happens is if you dont handle the nulls the rows will just not get considered
--also that a.key=b.key not works for the (=NULL)
select 
a.year,a.type, a.orders, b.sales
from table1 a join table2 b
on a.year=b.year --thisisnotnullatallasitisPRIMARYKEY
AND isnull(a.type,'')=isnull(b.type,'')
--handled the nulls by replacing them by the '' value