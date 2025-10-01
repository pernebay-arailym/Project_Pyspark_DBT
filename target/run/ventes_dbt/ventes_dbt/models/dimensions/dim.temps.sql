
  
    
    

    create  table
      "dev"."main"."dim.temps__dbt_tmp"
  
    as (
      select DISTINCT
    purchase_date,
    extract(year from purches_date) as year,
    extract(month from purches_date) as month,
    extract(day from purches_date) as day,
    strftime(purchase_date, '%Y-%m') as year_month
from "dev"."main"."stg_ventes"
    );
  
  