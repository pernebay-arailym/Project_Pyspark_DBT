
  
    
    

    create  table
      "dev"."main_bonus"."6_popular_products__dbt_tmp"
  
    as (
      --Quelles catégories de produits sont les plus populaires ?
select product_category, count(distinct product_name) as num_products
from "dev"."main"."dim_produit"
group by product_category
order by num_products desc
    );
  
  