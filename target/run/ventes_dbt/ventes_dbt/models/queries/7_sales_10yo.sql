
  
    
    

    create  table
      "dev"."main_bonus"."7_sales_10yo__dbt_tmp"
  
    as (
      --Quelle est la répartition des ventes par tranche d’âge (10 ans) ?
select 
    10 * (client_age / 10) as age_group_start,
    10 * (client_age / 10) + 9 as age_group_end,
    sum(total_amount) as total_sales
from "dev"."main"."fact_ventes" f
join "dev"."main"."dim_client" c
on f.client_name = c.client_name
group by age_group_start, age_group_end
order by age_group_start
    );
  
  