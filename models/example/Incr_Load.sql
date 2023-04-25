{{
    config(
        materialized='incremental',
        unique_key='Id'
    )
}}

select
    date_trunc('day', Created_at) as date_day,
    count(distinct Id) as daily_active_users

from PUBLIC.Emp1


{% if is_incremental() %}

  -- this filter will only be applied on an incremental run
  where date_day >= (select max(date_day) from {{ this }})

{% endif %}

group by 1