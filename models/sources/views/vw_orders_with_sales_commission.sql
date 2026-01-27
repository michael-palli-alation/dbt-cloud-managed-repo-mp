with o as (
    select * from {{ ref('stg_raw_orders') }}
),
sal as (
    select * from {{ ref('stg_raw_sales_targets') }}
)
select 
 o.*,
 sal.*
from orders o
left join sales_targets sal
  on o.order_date = sal.order_date