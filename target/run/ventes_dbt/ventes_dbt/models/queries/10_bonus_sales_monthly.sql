
  
  create view "dev"."main"."10_bonus_sales_monthly__dbt_tmp" as (
    -- Monthly sales volume per product category
select 
    t.year_month,
    p.categorie,
    sum(f.quantite) as total_quantity
from "dev"."main"."fact_ventes" f
join "dev"."main"."dim_temps" t on f.purchase_date = t.purchase_date
join "dev"."main"."dim_produit" p on f.produit_id = p.produit_id
group by t.year_month, p.categorie
order by t.year_month, total_quantity desc
  );
