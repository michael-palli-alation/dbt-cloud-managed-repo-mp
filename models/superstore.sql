with
    superstore as (
        SELECT CITY as city from superstore.public.orders)
select *
from superstore
