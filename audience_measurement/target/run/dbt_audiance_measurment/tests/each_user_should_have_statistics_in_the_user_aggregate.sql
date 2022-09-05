select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      select *
from WINTERSCHOOL.public.enriched_session es
         left join WINTERSCHOOL.public.agg_per_user agg
                   on es.users = agg.users
where agg.users is NULL
      
    ) dbt_internal_test