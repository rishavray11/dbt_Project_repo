{{
    config(
        materialized='table'
    )
}}
select 
	ID,
	ORDER_ID,
	AMOUNT,
	PAYMENT_METHOD,
	PAYMENT_DATE
from DBT_PROJECT1_DB.RAW_DATA.PAYMENTS