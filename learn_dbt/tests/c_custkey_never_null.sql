SELECT 
 count(*)
FROM 
 {{ref('assesment2')}}
WHERE C_CUSTKEY IS NULL 
HAVING count(1) >1
