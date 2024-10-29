select PRODUCT_ID,order_profit
from {{ ref('my_stg_orders') }}