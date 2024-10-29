

select * 
from
{{ ref('RAW_CUSTOMERS') }} as c inner join {{ ref('RAW_ORDERS') }} as o
on c.Customer_id = o.Customer_id