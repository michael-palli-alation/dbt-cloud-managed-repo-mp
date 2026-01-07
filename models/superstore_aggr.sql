with superstore_aggr as (select * from {{ ref("superstore") }})
{# union all select * from {{ ref("helloworld2") }}) #} 
select *
from superstore_aggr
