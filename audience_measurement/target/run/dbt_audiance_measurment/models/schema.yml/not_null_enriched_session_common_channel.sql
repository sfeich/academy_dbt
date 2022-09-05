select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select *
from WINTERSCHOOL.public.enriched_session
where common_channel is null



      
    ) dbt_internal_test