{{
    config(
        materialized='table'
    )
}}
select
	ID NUMBER,
	ORDER_ID,
	PRODUCT_ID,
	QUANTITY,
	UNIT_PRICE
from DBT_PROJECT_DB.RAW_DATA.ORDER_ITEMS