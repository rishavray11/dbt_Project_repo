with source as(
    select * from {{ source('raw_src', 'PRODUCTS') }}
)
select
    ID AS PRODUCTS_ID,
    NAME,
    CATEGORY,
    PRICE
from source