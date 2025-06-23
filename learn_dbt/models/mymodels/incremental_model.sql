{{config(materialized='incremental', unique_key="d_date",alias="date_dim_new")}}

SELECT 
 *
FROM 
 {{source("SF10TCL","date_dim")}}
where d_date <= current_date 

{% if is_incremental() %}
 AND d_date > (select max(d_date) from {{this}})
{% endif %}