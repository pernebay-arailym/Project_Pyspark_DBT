--Quels sont les produits les plus vendus en quantité ?
select product_name, sum(quantity) as product_quantity
from "dev"."main"."fact_ventes"
group by product_name
order by product_quantity desc