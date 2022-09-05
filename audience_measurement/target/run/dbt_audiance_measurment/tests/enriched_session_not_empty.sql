select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      with session_count as (
    select count(*) as freq 
    from WINTERSCHOOL.public.enriched_session
)
  
select * from session_count where freq = 0
      
    ) dbt_internal_test