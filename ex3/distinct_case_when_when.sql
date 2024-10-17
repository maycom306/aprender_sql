-- lista das categorias por ordem alfabética
select 
        distinct case when product_category_name is null then 'outros'

                      when product_category_name = "alimentos" 
                            or product_category_name = "alimentos_bebidas" 
                            then "alimentos"

                      when product_category_name = "artes"
                            or product_category_name = "artes_e_artesanato" 
                            then "artes"

                      -- mais performance   
                      when product_category_name in 
                      ("casa_conforto", "casa_conforto_2", "casa_construcao")
                      then "casa_conforto"

                       -- mais util ao meu ver.  
                       when product_category_name like "%artigos%"
                            then "artigos"
                            
                      else product_category_name
                 end as categoria_fillna

from tb_products

order by categoria_fillna