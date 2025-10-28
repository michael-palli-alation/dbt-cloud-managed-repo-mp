with
    superstore ss as (
        SELECT   ss.country,
         ss.region,
         ss.category,
         ss.segment,
         ss.sum(profit),
         od.order_date,
         od.customer_name
FROM     superstore.public.superstore_reporting
JOIN superstore.public.orders od on od.order_id = ss.order_id
    )
select *
from superstore