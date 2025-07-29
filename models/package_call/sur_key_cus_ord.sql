select *,
 {{dbt_utils.generate_surrogate_key(['customer_id','ORDER_ID']
 ) }}
 from {{ ref('stg_customer') }} as c
 join {{ ref('stg_order') }} as o on c.customer_id= o.user_id