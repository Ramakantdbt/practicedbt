{% snapshot demo1 %}
    {{
        config(
          target_schema='PUBLIC',
          unique_key='Id',
          strategy='timestamp',
          updated_at='Updated_at'
        )
    }}
    -- Pro-Tip: Use sources in snapshots!
     select * from {{ source('PUBLIC', 'Emp1') }}
{% endsnapshot %}