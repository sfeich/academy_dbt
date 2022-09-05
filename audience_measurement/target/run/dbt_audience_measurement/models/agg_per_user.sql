
  create or replace  view WINTERSCHOOL.public.agg_per_user 
  
   as (
    SELECT
    users,
    '2022-02-08' as date,
    CONCAT(users, '2022-02-08') as unique_id,
    SUM (time_watched_minutes) total_time_minutes,
    COUNT ( DISTINCT program ) different_programs_watched,
    CAST(total_time_minutes AS DECIMAL) / different_programs_watched average_time_per_program
FROM WINTERSCHOOL.public.enriched_session
WHERE finish >= '2022-02-08'
AND finish < dateadd(day, 3, '2022-02-08')
GROUP BY users
  );
