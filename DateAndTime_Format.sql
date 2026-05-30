select
CreationTime,
FORMAT(CreationTime,'MM-dd-yyyy')USAdate,
FORMAT(CreationTime,'dd-MM') daymonth,
FORMAT(CreationTime,'dd') dd,
FORMAT(CreationTime,'ddd') ddd,
FORMAT(CreationTime,'dddd') dddd,
FORMAT(CreationTime,'MM') MM,
FORMAT(CreationTime,'MMM') MMM,
FORMAT(CreationTime,'MMMM') MMMM
from Sales.Orders