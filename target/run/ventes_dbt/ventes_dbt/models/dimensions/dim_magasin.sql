
  
    
    

    create  table
      "dev"."main"."dim_magasin__dbt_tmp"
  
    as (
      select DISTINCT
    magasin_nom as store_name,
    magasin_type as store_type,
    magasin_region as store_region
from "dev"."main"."stg_ventes"
    );
  
  