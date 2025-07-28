 {% snapshot scd_chk_order_status1 %}
{{
    config(
        target_schema='MART',
        unique_key='ORDER_ID',
        strategy='check',
        check_cols=['STATUS','CITY'],
        invalidate_hard_deletes=True
    )
}}
select * FROM {{ ref('stg_order_status1') }}
{% endsnapshot %}