
  
    
    

    create  table
      "dev"."main"."dim_produit__dbt_tmp"
  
    as (
      select distinct 
    produit_nom as product_name,
    produit_categorie as product_category,
    produit_marque as product_brand,
    prix_catalogue as catalog_price
from "dev"."main"."stg_ventes"
    );
  
  