{% macro multiply_columns(v1,v2,decimal_places=2) -%}
   round( {{v1}} * {{v2}},{{decimal_places}})
{%endmacro%}