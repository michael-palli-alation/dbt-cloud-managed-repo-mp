select *
from {{ source('superstore_public_raw', 'demand_forecast') }}
