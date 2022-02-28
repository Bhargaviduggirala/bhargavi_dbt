{{ config(materialized='table') }}

select * from {{ source('mysql_rds1_sakila', 'actor') }}
where _fivetran_deleted = FALSE