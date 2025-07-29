{% macro tax_calc(amt_col, tax_perc=12) %}
    round({{ amt_col }} + ({{ amt_col }} * {{ tax_perc }} / 100), 2)
{% endmacro %}
