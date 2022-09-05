select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select *
from WINTERSCHOOL.public.agg_per_program
where unique_id is null



      
    ) dbt_internal_test