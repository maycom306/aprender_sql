-- lista das categorias por ordem alfabética

select 
     DISTINCT case WHEN product_category_name is null then 'outros'

          else product_category_name 
          end as categoria_fillna

FROM tb_products

ORDER BY 1
