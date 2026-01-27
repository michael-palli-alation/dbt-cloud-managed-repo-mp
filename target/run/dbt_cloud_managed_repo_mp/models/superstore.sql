
  create or replace   view SUPERSTORE.CITIBIKE.superstore
  
  
  
  
  as (
    with
    superstore as (
        SELECT CITY as city from superstore.public.orders)
select CITY
from superstore
  );

