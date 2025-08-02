{% macro limit_data_test(model, where_clause, limit=1) -%}
  select *
  from {{ model }}
  where {{ where_clause }}
  limit {{ limit }}
{% endmacro %}