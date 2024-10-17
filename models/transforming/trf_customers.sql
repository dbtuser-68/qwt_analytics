{{ config(materialized = 'table', schema = 'transforming') }}

select 

customerid,
companyname,
contactname,
city,
country,
divisionid,
address,
fax,
phone,
postalcode,
iff(stateprovince = '', 'NA', stateprovince) as stateprovince

from

{{ ref('stg_customers1') }}
