select
    line_item.part_key,
    orders.order_key,
    orders.customer_key,
    orders.order_date
from
    {{ ref('stg') }} as orders
join
    {{ ref('stg_line') }} as line_item
        on orders.order_key = line_item.order_key
limit 1000