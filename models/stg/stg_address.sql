{{ config(materialized='table') }}

select * from {{ source('mysql_rds1_sakila', 'address') }}
where _fivetran_deleted = FALSE