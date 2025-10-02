
  
  create view "dev"."main"."1_monthly_revenue__dbt_tmp" as (
    -- Quel est le chiffre d’affaires mensuel de la boutique ? (l’ensemble de l’entreprise)

select sum(total_amount) as monthly_revenue, year_month
from "dev"."main"."fact_ventes" f
join "dev"."main"."dim_temps" t
on f.purchase_date = t.purchase_date
group by year_month
order by year_month
  );
