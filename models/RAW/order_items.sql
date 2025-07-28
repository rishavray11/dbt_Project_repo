{{
    config(
        materialized='table'
    )
}}
select
	ID as order_items_id,
	ORDER_ID,
	PRODUCT_ID,
	QUANTITY,
	UNIT_PRICE
from DBT_PROJECT1_DB.RAW_DATA.ORDER_ITEMS