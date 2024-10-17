select DISTINCT
    coalesce(product_category_name, "outros") as categoria_filtrada

from tb_products
order by 1
-- o coalesce serve para substituir os null por outros valores.