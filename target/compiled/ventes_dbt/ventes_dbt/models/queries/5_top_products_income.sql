--Quels produits génèrent le plus de chiffre d’affaires ?
select product_name, sum(total_amount) as product_income
from "dev"."main"."fact_ventes"
group by product_name
order by product_income desc