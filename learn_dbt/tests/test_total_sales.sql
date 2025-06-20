{{config(materialized='test',alias='test_sumofsales')}}

SELECT
 SUM(c_acctbal) as sum_sales
from 
 {{ref('assesment2')}}

HAVING SUM(c_acctbal) < 100000000