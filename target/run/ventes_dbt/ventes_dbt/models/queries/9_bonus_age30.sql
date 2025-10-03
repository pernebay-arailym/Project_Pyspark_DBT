
  
    
    

    create  table
      "dev"."main_bonus"."9_bonus_age30__dbt_tmp"
  
    as (
      -- Products most bought by clients younger than 30
select 
    p.product_name,
    sum(f.quantity) as total_quantity
from "dev"."main"."fact_ventes" f
join "dev"."main"."dim_client" c on f.client_name = c.client_name
join "dev"."main"."dim_produit" p on f.product_name = p.product_name
where c.client_age < 30
group by p.product_name
order by total_quantity desc
    );
  
  