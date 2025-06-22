{% macro market_segment(column_name) %}
 CASE
    WHEN {{column_name}} IN ('BUILDING','HOUSEHOLD','FURNITURE') 
        THEN 'SEGMENT_1'
    ELSE 'SEGMENT_2'
 END
{% endmacro %}