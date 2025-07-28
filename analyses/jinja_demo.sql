{# hey buddy #}
-------------------------------------------------------------
{%-set var1='Hello'%}
{{var1}} --print the value of variable
{%-set var2='Rishav'%}
{{var2}}

{%- set A=['hello','hii','hey','holla']%}
{{A}}
{{A[2]}}


{% set B=['hello','hii','hey','holla']%}
select
{%- for i in B %}
  {{i}}{% if not loop.last %},{% endif %}
{%- endfor %}
------------------------------------------------------
{%- set temp=40 %}
{%- if temp>30 %}
{{'Hot'}}
{%- elif temp <30 %}
{{'okay okay'}}
{%- else %}
{{'its normal'}}
{%- endif %}
---------------------------------------------------------
{%set value1=['id','quantity','address']%}
select
{%- for i in value1 %}
  {{i}}{% if not loop.last %},{% endif %}
{%- endfor %}
from my_table