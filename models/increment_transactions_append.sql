{{
    config(
        materialized='incremental',
        incremental_strategy='append',
        unique_keys='trans_id'
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
from {{ source('raw_inc', 'TRANSACTIONS') }}
{% if is_incremental()%}
where last_update > (select max(last_update) from {{ this }})
{%endif%}