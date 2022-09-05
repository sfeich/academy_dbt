with session_count as (
    select count(*) as freq 
    from WINTERSCHOOL.public.agg_per_program
)
  
select * from session_count where freq = 0