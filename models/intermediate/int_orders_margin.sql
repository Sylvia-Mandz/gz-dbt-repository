select orders_id,date_date,
ROUND(SUM(revenue)) AS revenue,
ROUND(SUM(quantity)) AS quantity,
ROUND(SUM(purchase_cost)) AS purchase_cost,
ROUND(SUM(margin)) AS margin
from {{ref("int_sales_margin")}}
group by orders_id,date_date
order by orders_id desc