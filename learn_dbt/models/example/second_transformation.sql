{{config(materialized = 'table',alias='second_transformation')}}
select 
 *
from 
 {{ref('my_first_dbt_model')}}
