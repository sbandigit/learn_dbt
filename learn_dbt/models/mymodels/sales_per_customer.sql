{{config(materialized='table',alias = 'sales_per_customer')}}

select 
 c.c_name,
 c.c_address,
 sum(o.o_totalprice) as total_sales
from 
 dbt_db.dbt_schema.stg_customer c
 left join dbt_db.dbt_schema.stg_orders o
 on c.c_custkey = o.o_custkey
group by 1,2
