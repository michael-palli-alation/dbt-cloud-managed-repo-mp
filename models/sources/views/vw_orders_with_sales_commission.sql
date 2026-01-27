with o as (
    select * from {{ ref('stg_raw_orders') }}
),
sal as (
    select * from {{ ref('stg_analytics_sales_commission') }}
)
select 
o.*,
sal.*
from o
left join sal
  on o.order_date = sal."DATE"