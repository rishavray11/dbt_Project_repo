WITH source AS (
    SELECT * FROM {{ source('raw_src', 'RAW_CUSTOMER1') }}
)
select 
    ID AS CUSTOMER_ID,
	NAME,
	upper(EMAIL) as EMAIL_UPPER,
	CREATED_AT
from source