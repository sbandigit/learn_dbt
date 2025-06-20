
-- Use the `ref` function to select from other models
{{config(materialized='table',alias='second_model')}}
SELECT 
 *
FROM  
 {{ ref('my_first_dbt_model') }}
UNION ALL
SELECT 
 4 AS ID,
 'USER4' AS USER