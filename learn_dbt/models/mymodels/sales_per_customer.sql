{{config(materialized='table',alias = 'salespercustomer')}}

select 
 c.c_name,
 c.c_address,
 sum(o.o_totalprice) as total_sales
from 
 {{ref('stg_customers')}} c
 left join {{ref('stg_orders')}} o
 on c.c_custkey = o.o_custkey
group by 1,2
