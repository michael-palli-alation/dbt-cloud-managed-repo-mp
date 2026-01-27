select
  order_id::string as order_id,
  returned::boolean as is_returned
from {{ source('superstore_public_raw', 'returns') }}
