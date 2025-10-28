with
    superstore_aggr as (
        select * from {{ ref("superstore")}})
    )
select * 
from superstore_aggr