select
    o.ORDER_ID
    ,o.ORDER_DATE
    ,o.SHIP_DATE
    ,o.SHIP_MODE
    ,o.CUSTOMER_ID
    ,o.PRODUCT_ID
    ,c.CUSTOMER_ID as cusid
    ,c.CUSTOMER_NAME
    ,c.SEGMENT
    ,c.COUNTRY
    ,c.STATE
    ,p.CATEGORY
    ,p.PRODUCTID
    ,p.PRODUCTNAME
    ,p.SUBCATEGORY
    ,(o.ORDER_SELLING_PRICE - o.ORDER_COST_PRICE) as order_profit

from 
{{ ref('RAW_ORDERS') }} as o
left join 
{{ ref('RAW_CUSTOMERS') }} as c
on c.CUSTOMER_ID = o.CUSTOMER_ID
left join 
{{ ref('RAW_PRODUCTS') }} as p
on p.PRODUCTID = o.PRODUCT_ID