SELECT 
 C_CUSTKEY,
 C_MKTSEGMENT,
 {{market_segment('C_MKTSEGMENT')}}  mkt_adjusted_segment
FROM 
 {{source('DEV','CUSTOMER')}}