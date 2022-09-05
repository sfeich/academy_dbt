select *
from WINTERSCHOOL.public.enriched_session es
         left join WINTERSCHOOL.public.agg_per_user agg
                   on es.users = agg.users
where agg.users is NULL