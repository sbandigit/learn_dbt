{{config(materialized='test',alias='pk_uniquetest')}}

SELECT 
 C_CUSTKEY,
 COUNT(*) AS KEY_COUNT,
FROM 
 {{ref('assesment2')}}
GROUP BY 1
HAVING COUNT(*)>1


