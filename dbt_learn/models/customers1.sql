SELECT *
FROM {{ source('raw_layer', 'customers') }}
