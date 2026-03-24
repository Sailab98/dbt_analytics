{% macro cents_to_dollars(amount,decimal=2) %}
    ROUND({{amount}}/100,{{decimal}})
{% endmacro %}