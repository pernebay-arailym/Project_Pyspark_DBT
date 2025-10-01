select DISTINCT
    magasin_nom as store_name,
    magasin_type as store_type,
    magasin_region as store_region
from {{ref('stg_ventes')}}