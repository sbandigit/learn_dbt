{{config(materialized = 'table')}}
select 
 *
from 
 {{ref('first_transformation')}}
