{{config(materialized='table',alias='stg_customer')}}

SELECT 
 *
FROM 
 {{source('DEV','CUSTOMER')}}