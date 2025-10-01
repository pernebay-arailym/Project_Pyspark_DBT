select DISTINCT
    client_nom as client_name,
    client_ville as client_city,
    client_age
from "dev"."main"."stg_ventes"