select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      select *
from WINTERSCHOOL.public.session s
         left join WINTERSCHOOL.public.enriched_session es
                   on s.channel = es.common_channel
                       and s.users = es.users
                       and es.beginning >= s.beginning and es.finish <= s.finish
where es.users is NULL
      
    ) dbt_internal_test