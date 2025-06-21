{{
    config(
        materialized='table'
    )
}}

select
	ID,
	NAME,
	EMAIL,
	REGION,
	CREATED_AT,
	UPDATED_AT
from DBT_PROJECT_DB.RAW_DATA.CUSTOMERS