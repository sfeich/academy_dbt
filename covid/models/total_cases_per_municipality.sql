with table1 as (

select
  cum.nis5 as municipality, 
  sum(cum.cases) as total_cases

from {{ source('covid', 'cases_muni_cum') }} as cum

group by 1

),

table2 as (

select
  cum.nis5 as municipality, 
  sum(cum.cases) as total_cases

from {{ source('covid', 'cases_muni') }} as cum

group by 1

)


select source_tbl.*

from
  {% if var('cumul') == 'true' %}
       table1 as source_tbl
  {% else %}
       table2 as source_tbl
  {% endif %}
