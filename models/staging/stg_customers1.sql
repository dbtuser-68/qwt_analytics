{{ config(materialized = 'table') }}
 
select * from
{{source('qwt_raw','customer')}}