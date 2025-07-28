{% set var12=['rating_1','rating_2','rating_3']%}
select product_id,
{%- for i in var12 %}
  AVG({{i}}) as {{i}}_average
  {%- if not loop.last%}{%- endif %}
{%- endfor %}
from product_rev
Group by 1