with orders
    as(select* from {{ ref('stg_order') }}),
    PRODUCTS
    as(select * from {{ ref('stg_products') }})
select
    o.ORDER_ID,
	o.CREATED_AT,
	o.USER_ID,
    p.PRODUCTS_ID,
    p.NAME,
    p.CATEGORY
from orders o
left join PRODUCTS p 
on o.ORDER_ID = p.PRODUCTS_ID