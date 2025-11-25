{% snapshot customers_snapshot %}

{{
    config(
        target_database='DBT_PRACTICE',
        target_schema='SNAPSHOTS',
        unique_key='customer_id',
        strategy='timestamp',
        updated_at='updated_at'
    )
}}

SELECT
    customer_id,
    first_name,
    last_name,
    email,    
    updated_at
FROM {{ source('raw_layer', 'customers') }}

{% endsnapshot %}
