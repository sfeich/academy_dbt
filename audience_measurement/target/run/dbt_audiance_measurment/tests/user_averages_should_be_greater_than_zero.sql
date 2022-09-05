select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      SELECT
    *
FROM
    WINTERSCHOOL.public.agg_per_user
WHERE
    average_time_per_program < 0
      
    ) dbt_internal_test