{{
    config(
        materialized='table'
    )
}}
select
	ID,
	CUSTOMER_ID,
	STATUS,
	TOTAL_AMOUNT,
	CREATED_AT,
	UPDATED_AT 
from DBT_PROJECT_DB.RAW_DATA.ORDERS