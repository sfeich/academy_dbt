select *
from {{ ref('least_popular_program') }} l
full outer join {{ ref('agg_per_program') }} a
where l.total_time_minutes > a.total_time_minutes