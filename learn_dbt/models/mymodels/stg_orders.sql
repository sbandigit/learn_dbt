{{config(materialized='table',alias='stg_orders')}}

SELECT
 *
FROM 
 {{source('DEV','ORDERS')}}