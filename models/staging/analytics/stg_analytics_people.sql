select *
from {{ source('superstore_public_raw', 'people') }}
