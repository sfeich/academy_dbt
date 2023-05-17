with region_count as (
    
    select count(*) as no_of_cases 
    from {{ ref('cases_per_municipality') }}

)
  
select * 

from region_count 

where 
    no_of_cases < 0 or
    no_of_cases is null