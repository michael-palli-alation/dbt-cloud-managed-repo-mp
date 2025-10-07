with helloworld_aggr as (select * from {{ ref("helloworld") }})
{# union all select * from {{ ref("helloworld2") }}) #} 
select *
from helloworld_aggr
