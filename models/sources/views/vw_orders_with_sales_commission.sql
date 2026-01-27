with o as (
    select * from {{ ref('stg_raw_orders') }}
),
sal as (
    select * from {{ ref('stg_analytics_sales_commission') }}
)
select 
 o.*,
 sal.order_date, 
 sal.region
from orders o
left join sales_targets sal
  on o.category = sal.category