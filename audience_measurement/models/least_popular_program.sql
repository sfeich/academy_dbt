SELECT
  *
FROM {{ ref('agg_per_program') }}
ORDER BY total_time_minutes DESC
LIMIT 1