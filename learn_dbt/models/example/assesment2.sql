{{config(materialized='table', alias='playing_with_tests')}}

SELECT
 *
FROM 
 SNOWFLAKE_SAMPLE_DATA.TPCH_SF100.CUSTOMER
 