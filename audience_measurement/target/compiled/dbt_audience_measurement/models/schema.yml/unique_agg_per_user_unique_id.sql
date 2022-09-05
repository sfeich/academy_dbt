
    
    

select
    unique_id as unique_field,
    count(*) as n_records

from WINTERSCHOOL.public.agg_per_user
where unique_id is not null
group by unique_id
having count(*) > 1


