{{config(materialized='incremental', unique_key='d_date',alias='date_dim_new3')}}

SELECT
 *
FROM 
 {{source('SF10TCL','DATE_DIM')}}
WHERE D_DATE <= CURRENT_DATE
{% if is_incremental()%}
 AND D_DATE> (SELECT MAX(D_DATE) FROM {{this}})
{% endif %}