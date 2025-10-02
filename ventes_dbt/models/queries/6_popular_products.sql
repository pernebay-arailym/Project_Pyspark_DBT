--Quelles catégories de produits sont les plus populaires ?
select product_category, count(distinct product_name) as num_products
from {{ref('dim_produit')}}
group by product_category
order by num_products desc