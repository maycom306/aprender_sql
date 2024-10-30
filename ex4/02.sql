-- ### Ex2

-- Qual o valor total de receita gerada por sellers de cada estado?
-- Considere a base completa, com apenas pedidos entregues

SELECT 
        t3.seller_state,
        t1.seller_id,
        printf('%,.2f', SUM(t1.price)) AS receita,
        printf('%,.2f', SUM(t1.price) / COUNT(DISTINCT t1.seller_id)) AS avg_cada_estado

from tb_order_items as t1

left join tb_orders as t2
on t1.order_id = t2.order_id

left join tb_sellers as t3
on t1.seller_id = t3.seller_id
 
where order_status = 'delivered'

group by t3.seller_state