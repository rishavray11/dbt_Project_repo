 {% snapshot scd_ts_order_status %}
{{
    config(
        target_schema='MART',
        unique_key='ORDER_ID',
        strategy='timestamp',
        updated_at='UODATED_AT'
    )
}}
select * FROM {{ ref('stg_order_status') }}
{% endsnapshot %}