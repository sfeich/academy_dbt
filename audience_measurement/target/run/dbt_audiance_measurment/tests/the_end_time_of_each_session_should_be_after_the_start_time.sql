select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      select *
from WINTERSCHOOL.public.session s
where beginning > finish
      
    ) dbt_internal_test