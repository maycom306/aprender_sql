-- ### Ex3

-- Qual o peso médio dos produtos vendidos por sellers de cada estado?
-- Considere apenas o ano de 2017 e pedidos entregues nesta análise.

SELECT
        t3.seller_state,
        avg(t4.product_weight_g) as peso_medio

from tb_orders as t1

left join tb_order_items as t2
on t1.order_id = t2.order_id

left join tb_sellers as t3
on t2.seller_id = t3.seller_id 

left join tb_products as t4
on t2.product_id = t4.product_id


where t1.order_status = 'delivered'
and strftime('%Y', order_approved_at) = '2017'

group by t3.seller_state

