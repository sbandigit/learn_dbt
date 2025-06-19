
-- Use the `ref` function to select from other models

select *
from {{ ref('my_first_dbt_model') }}
--where id = 1
-- UNION ALL
-- SELECT 
--  4 AS ID,
--  'USER4' AS USER