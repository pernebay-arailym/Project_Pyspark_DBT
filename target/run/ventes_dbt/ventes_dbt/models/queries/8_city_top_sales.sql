
  
    
    

    create  table
      "dev"."main_bonus"."8_city_top_sales__dbt_tmp"
  
    as (
      --Quelle ville génère le plus de ventes ?
with ranked_cities as (
    select
        client_city,
        sum(total_amount) as city_sales,
        row_number() over (order by sum(total_amount) desc) as rn
    from "dev"."main"."fact_ventes" f 
    join "dev"."main"."dim_client" c
    on c.client_name=f.client_name
    group by client_city
)
select client_city, city_sales
from ranked_cities
where rn = 1
    );
  
  