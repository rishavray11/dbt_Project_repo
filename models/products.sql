{{
    config(
        materialized='table'
    )
}}
select
	ID,
	NAME,
	CATEGORY,
	PRICE
from DBT_PROJECT_DB.RAW_DATA.PRODUCTS