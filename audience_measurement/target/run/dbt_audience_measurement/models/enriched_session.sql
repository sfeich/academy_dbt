
  create or replace  view WINTERSCHOOL.public.enriched_session 
  
   as (
    WITH enriched_sessions as (
    select session.users       as users,
           schedule.channel as channel,
           session.beginning       as session_beginning,
           schedule.beginning as schedule_beginning,
           session.finish           as session_end,
           schedule.stop      as schedule_end,
           schedule.program           as program,
           schedule.genre         as genre,
           session.channel         as common_channel
    FROM WINTERSCHOOL.public.session as session
             INNER JOIN WINTERSCHOOL.public.schedule as schedule
        ON session.channel = schedule.channel
            AND session.beginning < schedule.stop
            AND session.finish > schedule.beginning
    WHERE
        session.finish >= '2022-02-08'
      AND session.finish
        < dateadd(day, 3, '2022-02-08')
    )

SELECT users,
       common_channel,
       greatest(session_beginning, schedule_beginning) beginning,
       least(session_end, schedule_end)                finish,
       DATEDIFF(minute, beginning, finish)           time_watched_minutes,
       program,
       genre
FROM enriched_sessions
  );
