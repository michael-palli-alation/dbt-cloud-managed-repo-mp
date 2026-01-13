with
    superstore as (
        SELECT CITY as city from orders)
select CITY
from superstore
