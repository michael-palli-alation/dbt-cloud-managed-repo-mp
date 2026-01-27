select *
from {{ source('superstore_public_raw', 'finance_customer_health') }}
