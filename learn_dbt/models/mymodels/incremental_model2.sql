/*

 this is sample incremental model.. 06/23/2025
 */

{{config(materialized='incremental',unique_key='d_date',alias='date_dim_new2')}}

SELECT 
 *
FROM 
 {{source('SF10TCL','DATE_DIM')}}
WHERE D_DATE <= CURRENT_DATE
{% if is_incremental() %}
 AND D_DATE > (SELECT MAX(D_DATE) FROM {{this}})
{% endif %}