# Data Minded Academy - Containerization with Docker
## Exercises Repository

[![Open in
Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/jgrujic/academy_dbt.git)

This repository is hosting the exercises provided to students in the context of the `Relational DataBases` course of the Data Minded Academy.
This specific excersise is focused on dbt.

To start click on "Open in Gitpod" button

Once it is started, run the script ./create_profiles.sh which will generate connection
with Snowflake DataWarehouse. DBT is already installed there, so everything
is ready for you first dbt projects.

Enter the folder "audiance_measurment" explore the files in folders:
- models
- tests


And file:
- dbt_profiles.yml

Try running the following commands:
- dbt run (See the views created at DWH)
- dbt test


Afterwards start your own dbt project by making a new folder and running
inside it
- dbt init

### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
