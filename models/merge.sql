{{
    config(
        materialized='incremental',
        unique_key='trans_id',
        incremental_strategy='merge'
    )
}}

select
    trans_id,
    customer_id,
    product_id,
    amount,
    transaction_date,
    status,
    last_update
from {{ source('raw_inc1', 'TRANSACTIONS1') }}
{% if is_incremental()%}
where last_update > (select max(last_update) from {{ this }})
{%endif%}