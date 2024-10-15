-- Ex4: Quantos produtos de 'beleza_saude' com menos de 1 litro?
SELECT 
count(DISTINCT product_id) as qude_linhas,

FROM tb_products

WHERE product_height_cm * product_length_cm * product_width_cm / 1000 < 1
and product_category_name = 'beleza_saude' 

