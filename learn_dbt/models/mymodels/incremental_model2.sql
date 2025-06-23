{{config(materialized='incremental',unique_key='d_date',alias='date_dim_new2')}}

SELECT 
 *
FROM 
 {{source('SF10TCL','date_dim')}}
WHERE D_DATE <= CURRENT_DATE
{% if is_incremental() %}
 AND D_DATE > (SELECT MAX(D_DATE) FROM {{this}})
{% endif %}