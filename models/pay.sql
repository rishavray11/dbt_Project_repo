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
from DBT_PROJECT_DB.RAW_DATA.PAYMENTS