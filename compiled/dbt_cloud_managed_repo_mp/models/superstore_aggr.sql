with
    superstore_aggr as (
        select CITY from SUPERSTORE.CITIBIKE.superstore)
select CITY
from superstore_aggr