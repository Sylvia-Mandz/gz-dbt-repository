select *,
quantity * purchase_price AS purchase_cost,
revenue - (quantity * purchase_price)  AS margin
from {{ref ("stg_raw__product")}}
join {{ ref("stg_raw__sales") }}
using (products_id)
