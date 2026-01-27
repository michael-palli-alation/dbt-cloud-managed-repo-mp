select
  category::varchar(100) as target_cat,
  order_date::date as order_date,
  segment::varchar(50) as segment,
  sales_target::number(38,0) as sales_target 
from {{ source('superstore_public_raw', 'returns') }}
