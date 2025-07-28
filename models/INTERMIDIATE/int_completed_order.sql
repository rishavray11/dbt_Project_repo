{{
    config(
        materialized='ephemeral'
    )
}}
select
	ORDER_ID,
	CREATED_AT,
	USER_ID AS customer_id,
    QUANTITY,
	PRODUCT_ID,
	UNIT_PRICE,
	STATUS
FROM {{ ref('stg_order') }}
where STATUS='COMPLETED'