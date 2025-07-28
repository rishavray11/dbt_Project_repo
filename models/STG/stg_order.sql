with source as (
    SELECT * FROM {{ source('raw_src', 'RAW_ORDERS') }}
)
select 
	ID AS ORDER_ID,
	CREATED_AT,
	USER_ID,
    QUANTITY,
	PRODUCT_ID,
	UNIT_PRICE,
	STATUS
FROM source