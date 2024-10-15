-- Ex1: Quantos produtos temos da categoria 'artes'?

SELECT 
        count(DISTINCT product_id) as 'qude_distintos'

from tb_products

WHERE product_category_name = 'artes'