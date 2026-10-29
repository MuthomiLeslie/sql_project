
with skills_demand as (
select skills_dim.skill_id, count(skills_job_dim.job_id) as demand_count
from job_postings_fact
inner join skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
inner join skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
where job_title_short = 'Data Scientist'
group by skill_id
),
with average_salary as (
    select round(avg(salary_year_avg), 0) as avg_salary
from job_postings_fact
inner join skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
inner join skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
where job_title_short = 'Data Scientist' and salary_year_avg is not null
group by skill_id
)

select skills_demand.skills, demand_count, avg_salary
from skills_demand
inner join average_salary on skills_demand.skills = average_salary.skills   