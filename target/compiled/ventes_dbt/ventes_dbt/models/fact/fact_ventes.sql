SELECT
    s.client_nom as client_name,
    s.produit_nom as product_name,
    s.magasin_nom as store_name,
    s.purchase_date,

    --measures
    s.quantite as quantity,
    s.montant_total as total_amount
from "dev"."main"."stg_ventes" s