-- Quels sont les mois les plus rentables de l’année ? (Faire Top 3)

{{ config(materialized='view') }}

with ranked_months as (
    select
        sum(f.total_amount) as monthly_revenue, year_month,
        row_number() over (order by sum(f.total_amount) desc) as rn
    from {{ ref('fact_ventes') }} f
    join {{ ref('dim_temps') }} t
        on f.purchase_date = t.purchase_date
    group by year_month
)
select monthly_revenue, year_month
from ranked_months
where rn <= 3





--{{ config(materialized='table') }}

--select sum(total_amount) as monthly_revenue, year_month
--from {{ref('fact_ventes')}} f
--join {{ref('dim_temps')}} t
--on f.purchase_date = t.purchase_date
--group by year_month
--order by monthly_revenue desc
--limit 3 