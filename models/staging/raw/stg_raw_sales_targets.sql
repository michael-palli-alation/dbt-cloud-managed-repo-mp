select
  category::string as category,
  order_date::date as order_date,
  segment::string as segment,
  sales_target::number(38,0) as sales_target 
from {{ source('superstore_public_raw', 'sales_targets') }}
