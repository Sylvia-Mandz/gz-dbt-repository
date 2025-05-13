select date_date,
COUNT(orders_id) AS nb_transactions,
ROUND(SUM(revenue),2) AS total_revenue,
ROUND(SUM(revenue)/COUNT(orders_id)) AS average_basket,
ROUND(SUM(operational_margin),2) AS operational_margin,
ROUND(SUM(purchase_cost),2) AS purchase_cost,
ROUND(SUM(shipping_fee),2) AS shipping_fee,
ROUND(SUM(logcost),2) AS logcost,
ROUND(SUM(quantity),2) AS total_quantity_of_products_sold
from {{ref("int_orders_operational")}}
group by date_date
order by date_date desc