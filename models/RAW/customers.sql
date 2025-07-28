{{
    config(
        materialized='table'
    )
}}
Select
	ID,
	NAME,
	EMAIL,
	REGION,
	CREATED_AT,
	UPDATED_AT
from {{ source('raw_src', 'RAW_CUSTOMER1') }}