select DISTINCT
    client_nom as client_name,
    client_age,
    client_ville as client_city
from {{ref('stg_ventes')}}