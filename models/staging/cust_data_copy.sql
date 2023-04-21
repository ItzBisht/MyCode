{{ config(tags=["customer"]) }}


with copy_data_cust as (select * from {{ source("snowflake_sample_db", "CUSTOMER") }}),

select *
from copy_data_cust
