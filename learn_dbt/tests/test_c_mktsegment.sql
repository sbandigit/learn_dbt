{{config(materialized='test', alias='test_mktsegment')}}
SELECT
 count(*) as records_count
FROM
 {{ref('assesment2')}}
WHERE c_mktsegment not in (
    'MACHINERY',
    'HOUSEHOLD',
    'FURNITURE',
    'AUTOMOBILE',
    'BUILDING'
    )
having count(1) >0
