{{config(materialized='table', alias='playing_with_tests')}}

SELECT
 *
FROM 
 {{source('DEV','CUSTOMER')}}
 