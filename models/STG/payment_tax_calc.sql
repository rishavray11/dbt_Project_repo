select
    ORDER_ID,
    AMOUNT,
    {{ tax_calc("AMOUNT") }} as net_total
from {{ source('raw_src', 'PAYMENTS') }}