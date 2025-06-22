{{ config(materialized='table',alias='first_model') }}

with source_data as (
    select 
        1 as id,'user1' as user,'PA' as state,'2024-06-18 01:00:00.000'::timestamp as updated_at
    union all
    select 
        2 as id,'user2' as user,'VA' as state,'2025-02-01 04:00:00.000'::timestamp as updated_at
    union all
     select 
        3 as id,'user3' as user,'NC' as state,'2023-01-01 04:00:00.000'::timestamp as updated_at
)
select *
from source_data