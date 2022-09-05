
  create or replace  view WINTERSCHOOL.public.agg_per_program 
  
   as (
    SELECT
    program,
    '2022-02-08' as date,
    CONCAT(program, '2022-02-08') as unique_id,
    SUM (time_watched_minutes) total_time_minutes,
    COUNT ( DISTINCT users ) unique_users_watched,
    CAST(total_time_minutes AS DECIMAL) / unique_users_watched average_time_per_digibox
FROM WINTERSCHOOL.public.enriched_session
WHERE finish >= '2022-02-08'
AND finish < dateadd(day, 3, '2022-02-08')

GROUP BY program
  );
