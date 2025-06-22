{% snapshot model_snapshot %}

{{
    config(
        target_database= 'dbt_db',
        target_schema= 'snapshots',
        unique_key = 'id',

        strategy = 'timestamp',
        updated_at = 'updated_at'
    )
}}

SELECT 
 *
FROM 
 {{source('STG','FIRST_MODEL')}}

{% endsnapshot %}