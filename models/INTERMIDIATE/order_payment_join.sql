with orders 
    as ( select * from {{ ref('stg_order') }})
    ,payments 
    as (
        select * from {{ ref('stg_payment') }}
    )
select 
    o.ORDER_ID,
    o.status,
    p.amount as payment_amount,
    p.payment_method,
    p.payment_date    
from orders o
left join payments p 
on o.ORDER_ID = p.order_id