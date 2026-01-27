with o as (
    select * from {{ ref('stg_raw_orders') }}
),
sal as (
    select * from {{ ref('stg_analytics_sales_commission') }}
)
select 
 o.*,
 sal.sales_person
from orders o
left join sales_commission sal on (o.order_date = sal.order_date)