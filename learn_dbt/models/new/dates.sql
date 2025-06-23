
{{config(materialized='incremental', unique_key = 'd_date',alias = 'date_dim')}}

SELECT 
 *
FROM 
 {{source('SF10TCL','date_dim')}}
WHERE D_DATE <= current_date

{% if is_incremental() %}
 AND D_DATE > (SELECT MAX(D_DATE) FROM {{this}})
{% endif %}