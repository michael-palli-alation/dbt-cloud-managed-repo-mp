
with
    superstore_aggr as (
        select CITY from {{ ref("superstore")}})
select CITY
from superstore_aggr
