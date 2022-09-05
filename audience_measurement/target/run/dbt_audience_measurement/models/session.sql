
  create or replace  view WINTERSCHOOL.public.session 
  
   as (
    WITH timestamp_events AS (
         SELECT
                users as users,
                channel as channel,
                time as timestamp
         FROM WINTERSCHOOL.public.timestamps
         WHERE timestamp >= '2022-02-08'
           AND timestamp < dateadd(day, 3, '2022-02-08')
     ),
    sessions AS(
	SELECT
		users,
		channel,
		timestamp as beginning,
		LEAD(timestamp) OVER (
	        	PARTITION BY users 
	        	ORDER BY timestamp
		) as finish
	FROM 
		timestamp_events
)

SELECT
    users,
    channel,
    beginning,
    COALESCE(finish, DATEADD(hour,3, beginning)) as finish
FROM
    sessions
  );
