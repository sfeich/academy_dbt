SELECT
  program,
  total_time_minutes
FROM {{ ref('agg_per_program') }}
ORDER BY total_time_minutes ASC
LIMIT 1