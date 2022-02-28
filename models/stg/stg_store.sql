{{ config(materialized='table') }}

select * from {{ source('mysql_rds1_sakila', 'store') }}
where _fivetran_deleted = FALSE