
select
   o.order_date,
   p.product_name,
   p.category,
   p.vendor,
   u.city,
   u.state,
   u.sales_channel,
   SUM(o.order_amount) as total_revenue
FROM
{{ref("silver_orders")}} as o 
LEFT JOIN {{ref("silver_products")}} as p 
ON o.product_id = p.id
LEFT JOIN {{ref("silver_users")}} as u 
ON o.user_id = u.id
group by all