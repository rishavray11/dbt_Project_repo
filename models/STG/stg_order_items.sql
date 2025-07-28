 with source as (
    select* from {{ source('raw_src', 'ORDER_ITEMS') }}
)
select
    ID as order_items_id,
    ORDER_ID,
    PRODUCT_ID,
    QUANTITY,
    UNIT_PRICE
from source
    

    