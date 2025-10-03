-- Products most bought by clients younger than 30
select 
    p.product_name,
    sum(f.quantity) as total_quantity
from {{ref('fact_ventes')}} f
join {{ref('dim_client')}} c on f.client_name = c.client_name
join {{ref('dim_produit')}} p on f.product_name = p.product_name
where c.client_age < 30
group by p.product_name
order by total_quantity desc