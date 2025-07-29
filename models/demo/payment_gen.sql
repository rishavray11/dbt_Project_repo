select
  ORDER_ID,
  {{ generate_payment('payment_mode', 'AMOUNT') }}
from {{ source('raw_src', 'PAYMENTS') }}
group by 1

