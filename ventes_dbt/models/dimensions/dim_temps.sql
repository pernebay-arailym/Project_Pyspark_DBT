select DISTINCT
    purchase_date,
    extract(year from purchase_date) as year,
    extract(month from purchase_date) as month,
    extract(day from purchase_date) as day,
    strftime(purchase_date, '%Y-%m') as year_month
from {{ref('stg_ventes')}}