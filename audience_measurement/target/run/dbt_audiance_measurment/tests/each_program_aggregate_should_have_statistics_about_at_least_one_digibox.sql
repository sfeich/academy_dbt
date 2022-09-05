select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      SELECT
    *
FROM
    WINTERSCHOOL.public.agg_per_program
WHERE
    unique_users_watched <= 0
      
    ) dbt_internal_test