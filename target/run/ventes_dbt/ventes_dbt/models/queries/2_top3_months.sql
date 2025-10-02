
  
    
    

    create  table
      "dev"."main"."2_top3_months__dbt_tmp"
  
    as (
      -- Quels sont les mois les plus rentables de l’année ? (Faire Top 3)



with ranked_months as (
    select
        sum(f.total_amount) as monthly_revenue, year_month,
        row_number() over (order by sum(f.total_amount) desc) as rn
    from "dev"."main"."fact_ventes" f
    join "dev"."main"."dim_temps" t
        on f.purchase_date = t.purchase_date
    group by year_month
)
select monthly_revenue, year_month
from ranked_months
where rn <= 3





--

--select sum(total_amount) as monthly_revenue, year_month
--from "dev"."main"."fact_ventes" f
--join "dev"."main"."dim_temps" t
--on f.purchase_date = t.purchase_date
--group by year_month
--order by monthly_revenue desc
--limit 3
    );
  
  