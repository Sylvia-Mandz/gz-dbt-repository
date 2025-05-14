select
    date_date,
    count(orders_id) as nb_transactions,
    round(sum(revenue), 2) as total_revenue,
    round(sum(revenue) / count(orders_id)) as average_basket,
    round(sum(operational_margin), 2) as operational_margin,
    round(sum(purchase_cost), 2) as purchase_cost,
    round(sum(shipping_fee), 2) as shipping_fee,
    round(sum(logcost), 2) as logcost,
    round(sum(quantity), 2) as total_quantity_of_products_sold
from {{ ref("int_orders_operational") }}
group by date_date
order by date_date desc