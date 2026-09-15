-- Assert that the subtotal for each order is smaller than the total amount
select
    order_id,
    sum(subtotal) as subtotal_amount,
    sum(order_total) as total_amount
from {{ ref('stg_orders') }}
group by 1
having subtotal_amount > total_amount
