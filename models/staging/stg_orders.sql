select
orderid,
orderdate,
shipdate,
shipmode,
ordersellingprice-ordercostprice as totalprice,
--column from customer 
c.customerid,
customername
from {{ ref('raw_orders') }} as o
left join {{ ref('raw_customer') }} as c
on o.customerid=c.customerid