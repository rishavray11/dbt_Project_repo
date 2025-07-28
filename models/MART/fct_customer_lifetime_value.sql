SELECT
    c.customer_id,
    sum(e.QUANTITY*UNIT_PRICE) as lifetime_value,
    count(e.ORDER_ID)as total_orders
from {{ ref('stg_customer') }} c
join {{ ref('int_completed_order') }} e
    on c.customer_id=e.customer_id
group by c.customer_id
