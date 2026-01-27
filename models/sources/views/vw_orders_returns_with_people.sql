with o as (
  select * from {{ ref('stg_raw_orders') }}
),
p as (
    select * from {{ ref('stg_analytics_people') }}
),
r as (
    select * from {{ ref('stg_raw_returns') }}
)
  select o.*,
  p.regional_manager,
  r.returned
  from orders o
  left join people p on (o.region = p.region) 
  left join returns r on (o.order_id = r.order_id)