select 
    customer_id,
    count(order_id) as total_orders,
    sum(order_total) as total_spent
from {{ ref('stg_orders') }}
group by customer_id