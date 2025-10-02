-- Quelle est l’évolution du panier moyen (montant_total / transaction) au fil du temps ?
select avg(total_amount) as average_basket, year_month
from "dev"."main"."fact_ventes" f
join "dev"."main"."dim_temps" t
on f.purchase_date = t.purchase_date
group by year_month
order by year_month