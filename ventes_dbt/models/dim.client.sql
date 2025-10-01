select DISTINCT
    client_nom as client_name,
    client_ville as client_city,
    client_age
from {{ref('stg_ventes')}}