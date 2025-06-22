{{config(materialized='test',alias='sample_test')}}

with source as (
    select 1 as id, 
    'test' as user

    union all
    
    select 2 as id ,
    'test1' as user
)
select 
 *
from 
 source
