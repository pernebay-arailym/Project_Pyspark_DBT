SELECT
    s.client_nom as client_name,
    p.produit_nom as product_name,
    m.magasin_nom as store_name,
    t.purchase_date,

    --measures
    s.quantite as quantity,
    s.montant_total as total_amount
from "dev"."main"."stg_ventes" s