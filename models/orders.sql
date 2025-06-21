{{
    config(
        materialized='table'
    )
}}
select
	ID,
	CUSTOMER_ID,
	STATUS,
	ORDER_DATE,
	TOTAL_AMOUNT,
	CREATED_AT,
	UPDATED_AT 
from DBT_PROJECT_DB.RAW_DATA.ORDERS