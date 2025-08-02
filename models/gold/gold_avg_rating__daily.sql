
--usando direto o source
-- WITH reviews (
-- select  * FROM
-- {{source("landing","reviews")}}
-- ),
-- products AS (
--  SELECT
--  id,
--  created_at,
--  title as product_name,
--  category,
--  ean,
--  vendor,
--  price
-- FROM
-- {{source("landing","products")}} 
-- )
-- SELECT 
--     date (date_format(r.created_at,'yyyy-MM-dd')) as review_date,
--     r.product_id,
--     p.product_name,
--     avg(r.rating) as avg_rating
-- FROM
-- reviews as r 
-- LEFT JOIN products as p
-- ON r.product_id = p.id
-- group by all



SELECT 
    date (date_format(r.created_at,'yyyy-MM-dd')) as review_date,
    r.product_id,
    p.product_name,
    avg(r.rating) as avg_rating
FROM
{{ref('bronze_reviews')}} as r 
LEFT JOIN {{ref('silver_products')}} as p
ON r.product_id = p.id
group by all