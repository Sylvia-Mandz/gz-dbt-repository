select *,
ROUND ((margin + shipping_fee - logcost - ship_cost),2) AS operational_margin,
from {{ref("int_orders_margin")}}
join {{ref("stg_raw__ship")}}
using (orders_id)
order by orders_id desc