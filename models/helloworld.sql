with
    helloworld as (
        select 'schema' as otype, schema_id as oid
        from public.rdbms_schemas
        union all
        select 'table' as otype, table_id as oid
        from public.rdbms_tables
    )
select *
from helloworld
