--Quelle ville génère le plus de ventes ?
with ranked_cities as (
    select
        client_city,
        sum(total_amount) as city_sales,
        row_number() over (order by sum(total_amount) desc) as rn
    from {{ ref('fact_ventes') }} f 
    join {{ ref('dim_client') }} c
    on c.client_name=f.client_name
    group by client_city
)
select client_city, city_sales
from ranked_cities
where rn = 1