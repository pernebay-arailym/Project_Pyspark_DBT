-- Monthly sales volume per product category
select 
    t.year_month,
    p.product_category,
    sum(f.quantity) as total_quantity
from "dev"."main"."fact_ventes" f
join "dev"."main"."dim_temps" t on f.purchase_date = t.purchase_date
join "dev"."main"."dim_produit" p on f.product_name = p.product_name
group by t.year_month, p.product_category
order by t.year_month, total_quantity desc