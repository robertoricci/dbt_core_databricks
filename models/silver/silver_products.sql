select
 id,
 created_at,
 title AS product_name,
 category,
 ean,
 vendor,
 price
FROM
{{ref('products_snapshot')}}
where dbt_valid_to is null