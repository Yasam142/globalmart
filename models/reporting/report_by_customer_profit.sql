select 
orderid as order_number,
shipmode,
customername,
sum(totalprice) as Total_profit
from {{ ref('stg_orders') }}
group by 
orderid,
shipmode,
customername