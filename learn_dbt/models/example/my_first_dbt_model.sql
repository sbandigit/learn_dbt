{{ config(materialized='table',alias='first_model') }}

with source_data as (

    select 
        1 as id,
        'user1' as user

    union all
    select 
        null as id,
        'user2' as user
    union all
     select 
        3 as id,
        'user3' as user

)
select *
from source_data