select
 {{dbt_utils.star(
    from= ref('stg_payment'),
    except=['payment_mode','AMOUNT'],
    relation_alias='o'
 ) }}
 from {{ ref('stg_payment') }} as o