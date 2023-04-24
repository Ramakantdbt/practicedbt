{{ config(materialized='table') }}

select *
from snowflake.account_usage.roles