select
    ORDER_ID,
    STATUS,
    CITY,
    CRATED_AT,
    UODATED_AT
from {{ source('raw_snap', 'ORDER_STATUS') }}