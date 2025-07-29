{% macro generate_payment(payment_type, amt) %}
  {% set payment_mode = ['UPI', 'credit card', 'Net Banking'] %}
  {% for mode in payment_mode %}
    sum(case when {{ payment_type }} = '{{ mode }}' then {{ amt }} end) as {{ mode | replace(' ', '_') }}_pay
    {% if not loop.last %},{% endif %}
  {% endfor %}
  , sum({{ amt }}) as total_amt
{% endmacro %}
