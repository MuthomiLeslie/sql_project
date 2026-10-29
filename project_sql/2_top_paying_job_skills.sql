

with top_paying_jobs as (
    select 
        job_id, 
        job_title, 
        company_id,
        salary_year_avg
    from job_postings_fact
    where 
        job_title_short = 'Data Scientist' and 
        job_location = 'Anywhere' and 
        salary_year_avg is not null
    order by 
        salary_year_avg desc
    limit 50
)   


select top_paying_jobs.*, skills_dim.skills
from top_paying_jobs
inner join skills_job_dim on top_paying_jobs.job_id = skills_job_dim.job_id
inner join skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
order by salary_year_avg desc;



/*What these numbers tell us
- Python is the strongest common requirement. It appears in approximately 85% of postings, making it the most useful first language to learn for broad coverage of these roles.
- SQL is nearly as important. Its 61% share shows that querying and managing structured data remain central, even in senior and specialized positions.
- Tableau provides a bridge between analysis and communication. Its presence in 39% of postings suggests that presenting findings to business teams is an important part of many data science jobs.
- Big data tools are prominent. Spark and Hadoop appear in 31.7% and 22.0% of postings, respectively, pointing to demand for processing large datasets.
- Machine learning frameworks matter, but they are not universal. TensorFlow and PyTorch appear less often than Python and SQL, which suggests that foundational data skills apply across more roles than specialized model-building tools.
*/
 

-- Results
/*
[
  {
    "job_id": 40145,
    "job_title": "Staff Data Scientist/Quant Researcher",
    "company_id": 2624,
    "salary_year_avg": "550000.0",
    "skills": "sql"
  },
  {
    "job_id": 40145,
    "job_title": "Staff Data Scientist/Quant Researcher",
    "company_id": 2624,
    "salary_year_avg": "550000.0",
    "skills": "python"
  },
  {
    "job_id": 1714768,
    "job_title": "Staff Data Scientist - Business Analytics",
    "company_id": 2624,
    "salary_year_avg": "525000.0",
    "skills": "sql"
  },
  {
    "job_id": 1131472,
    "job_title": "Data Scientist",
    "company_id": 140397,
    "salary_year_avg": "375000.0",
    "skills": "sql"
  },
  {
    "job_id": 1131472,
    "job_title": "Data Scientist",
    "company_id": 140397,
    "salary_year_avg": "375000.0",
    "skills": "python"
  },
  {
    "job_id": 1131472,
    "job_title": "Data Scientist",
    "company_id": 140397,
    "salary_year_avg": "375000.0",
    "skills": "java"
  },
  {
    "job_id": 1131472,
    "job_title": "Data Scientist",
    "company_id": 140397,
    "salary_year_avg": "375000.0",
    "skills": "cassandra"
  },
  {
    "job_id": 1131472,
    "job_title": "Data Scientist",
    "company_id": 140397,
    "salary_year_avg": "375000.0",
    "skills": "spark"
  },
  {
    "job_id": 1131472,
    "job_title": "Data Scientist",
    "company_id": 140397,
    "salary_year_avg": "375000.0",
    "skills": "hadoop"
  },
  {
    "job_id": 1131472,
    "job_title": "Data Scientist",
    "company_id": 140397,
    "salary_year_avg": "375000.0",
    "skills": "tableau"
  },
  {
    "job_id": 126218,
    "job_title": "Director Level - Product Management - Data Science",
    "company_id": 296825,
    "salary_year_avg": "320000.0",
    "skills": "azure"
  },
  {
    "job_id": 126218,
    "job_title": "Director Level - Product Management - Data Science",
    "company_id": 296825,
    "salary_year_avg": "320000.0",
    "skills": "aws"
  },
  {
    "job_id": 126218,
    "job_title": "Director Level - Product Management - Data Science",
    "company_id": 296825,
    "salary_year_avg": "320000.0",
    "skills": "tensorflow"
  },
  {
    "job_id": 126218,
    "job_title": "Director Level - Product Management - Data Science",
    "company_id": 296825,
    "salary_year_avg": "320000.0",
    "skills": "keras"
  },
  {
    "job_id": 126218,
    "job_title": "Director Level - Product Management - Data Science",
    "company_id": 296825,
    "salary_year_avg": "320000.0",
    "skills": "pytorch"
  },
  {
    "job_id": 126218,
    "job_title": "Director Level - Product Management - Data Science",
    "company_id": 296825,
    "salary_year_avg": "320000.0",
    "skills": "scikit-learn"
  },
  {
    "job_id": 126218,
    "job_title": "Director Level - Product Management - Data Science",
    "company_id": 296825,
    "salary_year_avg": "320000.0",
    "skills": "datarobot"
  },
  {
    "job_id": 38905,
    "job_title": "Principal Data Scientist",
    "company_id": 45368,
    "salary_year_avg": "300000.0",
    "skills": "sql"
  },
  {
    "job_id": 38905,
    "job_title": "Principal Data Scientist",
    "company_id": 45368,
    "salary_year_avg": "300000.0",
    "skills": "python"
  },
  {
    "job_id": 38905,
    "job_title": "Principal Data Scientist",
    "company_id": 45368,
    "salary_year_avg": "300000.0",
    "skills": "java"
  },
  {
    "job_id": 38905,
    "job_title": "Principal Data Scientist",
    "company_id": 45368,
    "salary_year_avg": "300000.0",
    "skills": "c"
  },
  {
    "job_id": 38905,
    "job_title": "Principal Data Scientist",
    "company_id": 45368,
    "salary_year_avg": "300000.0",
    "skills": "aws"
  },
  {
    "job_id": 38905,
    "job_title": "Principal Data Scientist",
    "company_id": 45368,
    "salary_year_avg": "300000.0",
    "skills": "gcp"
  },
  {
    "job_id": 129924,
    "job_title": "Director of Data Science",
    "company_id": 38767,
    "salary_year_avg": "300000.0",
    "skills": "python"
  },
  {
    "job_id": 129924,
    "job_title": "Director of Data Science",
    "company_id": 38767,
    "salary_year_avg": "300000.0",
    "skills": "pandas"
  },
  {
    "job_id": 129924,
    "job_title": "Director of Data Science",
    "company_id": 38767,
    "salary_year_avg": "300000.0",
    "skills": "numpy"
  },
  {
    "job_id": 457991,
    "job_title": "Head of Battery Data Science",
    "company_id": 1293,
    "salary_year_avg": "300000.0",
    "skills": "python"
  },
  {
    "job_id": 457991,
    "job_title": "Head of Battery Data Science",
    "company_id": 1293,
    "salary_year_avg": "300000.0",
    "skills": "aws"
  },
  {
    "job_id": 457991,
    "job_title": "Head of Battery Data Science",
    "company_id": 1293,
    "salary_year_avg": "300000.0",
    "skills": "gcp"
  },
  {
    "job_id": 226011,
    "job_title": "Distinguished Data Scientist",
    "company_id": 367,
    "salary_year_avg": "300000.0",
    "skills": "scala"
  },
  {
    "job_id": 226011,
    "job_title": "Distinguished Data Scientist",
    "company_id": 367,
    "salary_year_avg": "300000.0",
    "skills": "java"
  },
  {
    "job_id": 226011,
    "job_title": "Distinguished Data Scientist",
    "company_id": 367,
    "salary_year_avg": "300000.0",
    "skills": "spark"
  },
  {
    "job_id": 226011,
    "job_title": "Distinguished Data Scientist",
    "company_id": 367,
    "salary_year_avg": "300000.0",
    "skills": "tensorflow"
  },
  {
    "job_id": 226011,
    "job_title": "Distinguished Data Scientist",
    "company_id": 367,
    "salary_year_avg": "300000.0",
    "skills": "pytorch"
  },
  {
    "job_id": 226011,
    "job_title": "Distinguished Data Scientist",
    "company_id": 367,
    "salary_year_avg": "300000.0",
    "skills": "kubernetes"
  },
  {
    "job_id": 178888,
    "job_title": "Pre-Sales Data Scientist, Financial Services",
    "company_id": 4482,
    "salary_year_avg": "288000.0",
    "skills": "sql"
  },
  {
    "job_id": 178888,
    "job_title": "Pre-Sales Data Scientist, Financial Services",
    "company_id": 4482,
    "salary_year_avg": "288000.0",
    "skills": "python"
  },
  {
    "job_id": 178888,
    "job_title": "Pre-Sales Data Scientist, Financial Services",
    "company_id": 4482,
    "salary_year_avg": "288000.0",
    "skills": "nosql"
  },
  {
    "job_id": 178888,
    "job_title": "Pre-Sales Data Scientist, Financial Services",
    "company_id": 4482,
    "salary_year_avg": "288000.0",
    "skills": "r"
  },
  {
    "job_id": 178888,
    "job_title": "Pre-Sales Data Scientist, Financial Services",
    "company_id": 4482,
    "salary_year_avg": "288000.0",
    "skills": "sas"
  },
  {
    "job_id": 178888,
    "job_title": "Pre-Sales Data Scientist, Financial Services",
    "company_id": 4482,
    "salary_year_avg": "288000.0",
    "skills": "matlab"
  },
  {
    "job_id": 178888,
    "job_title": "Pre-Sales Data Scientist, Financial Services",
    "company_id": 4482,
    "salary_year_avg": "288000.0",
    "skills": "azure"
  },
  {
    "job_id": 178888,
    "job_title": "Pre-Sales Data Scientist, Financial Services",
    "company_id": 4482,
    "salary_year_avg": "288000.0",
    "skills": "databricks"
  },
  {
    "job_id": 178888,
    "job_title": "Pre-Sales Data Scientist, Financial Services",
    "company_id": 4482,
    "salary_year_avg": "288000.0",
    "skills": "aws"
  },
  {
    "job_id": 178888,
    "job_title": "Pre-Sales Data Scientist, Financial Services",
    "company_id": 4482,
    "salary_year_avg": "288000.0",
    "skills": "redshift"
  },
  {
    "job_id": 178888,
    "job_title": "Pre-Sales Data Scientist, Financial Services",
    "company_id": 4482,
    "salary_year_avg": "288000.0",
    "skills": "oracle"
  },
  {
    "job_id": 178888,
    "job_title": "Pre-Sales Data Scientist, Financial Services",
    "company_id": 4482,
    "salary_year_avg": "288000.0",
    "skills": "snowflake"
  },
  {
    "job_id": 178888,
    "job_title": "Pre-Sales Data Scientist, Financial Services",
    "company_id": 4482,
    "salary_year_avg": "288000.0",
    "skills": "spark"
  },
  {
    "job_id": 178888,
    "job_title": "Pre-Sales Data Scientist, Financial Services",
    "company_id": 4482,
    "salary_year_avg": "288000.0",
    "skills": "tableau"
  },
  {
    "job_id": 178888,
    "job_title": "Pre-Sales Data Scientist, Financial Services",
    "company_id": 4482,
    "salary_year_avg": "288000.0",
    "skills": "sas"
  },
  {
    "job_id": 178888,
    "job_title": "Pre-Sales Data Scientist, Financial Services",
    "company_id": 4482,
    "salary_year_avg": "288000.0",
    "skills": "qlik"
  },
  {
    "job_id": 1177572,
    "job_title": "Data Science Manager, Online Customer Experience Intelligence (Remote)",
    "company_id": 7114,
    "salary_year_avg": "280000.0",
    "skills": "sql"
  },
  {
    "job_id": 1177572,
    "job_title": "Data Science Manager, Online Customer Experience Intelligence (Remote)",
    "company_id": 7114,
    "salary_year_avg": "280000.0",
    "skills": "bigquery"
  },
  {
    "job_id": 1177572,
    "job_title": "Data Science Manager, Online Customer Experience Intelligence (Remote)",
    "company_id": 7114,
    "salary_year_avg": "280000.0",
    "skills": "tableau"
  },
  {
    "job_id": 158782,
    "job_title": "Data Scientist",
    "company_id": 140397,
    "salary_year_avg": "275000.0",
    "skills": "sql"
  },
  {
    "job_id": 158782,
    "job_title": "Data Scientist",
    "company_id": 140397,
    "salary_year_avg": "275000.0",
    "skills": "python"
  },
  {
    "job_id": 158782,
    "job_title": "Data Scientist",
    "company_id": 140397,
    "salary_year_avg": "275000.0",
    "skills": "java"
  },
  {
    "job_id": 158782,
    "job_title": "Data Scientist",
    "company_id": 140397,
    "salary_year_avg": "275000.0",
    "skills": "cassandra"
  },
  {
    "job_id": 158782,
    "job_title": "Data Scientist",
    "company_id": 140397,
    "salary_year_avg": "275000.0",
    "skills": "aws"
  },
  {
    "job_id": 158782,
    "job_title": "Data Scientist",
    "company_id": 140397,
    "salary_year_avg": "275000.0",
    "skills": "spark"
  },
  {
    "job_id": 158782,
    "job_title": "Data Scientist",
    "company_id": 140397,
    "salary_year_avg": "275000.0",
    "skills": "airflow"
  },
  {
    "job_id": 158782,
    "job_title": "Data Scientist",
    "company_id": 140397,
    "salary_year_avg": "275000.0",
    "skills": "hadoop"
  },
  {
    "job_id": 158782,
    "job_title": "Data Scientist",
    "company_id": 140397,
    "salary_year_avg": "275000.0",
    "skills": "tableau"
  },
  {
    "job_id": 89798,
    "job_title": "Director, Data Science",
    "company_id": 6921,
    "salary_year_avg": "265000.0",
    "skills": "python"
  },
  {
    "job_id": 89798,
    "job_title": "Director, Data Science",
    "company_id": 6921,
    "salary_year_avg": "265000.0",
    "skills": "tensorflow"
  },
  {
    "job_id": 89798,
    "job_title": "Director, Data Science",
    "company_id": 6921,
    "salary_year_avg": "265000.0",
    "skills": "pytorch"
  },
  {
    "job_id": 257651,
    "job_title": "Data Science Vice President",
    "company_id": 139603,
    "salary_year_avg": "265000.0",
    "skills": "python"
  },
  {
    "job_id": 257651,
    "job_title": "Data Science Vice President",
    "company_id": 139603,
    "salary_year_avg": "265000.0",
    "skills": "opencv"
  },
  {
    "job_id": 1325996,
    "job_title": "Chief Data Officer",
    "company_id": 532519,
    "salary_year_avg": "265000.0",
    "skills": "sql"
  },
  {
    "job_id": 1325996,
    "job_title": "Chief Data Officer",
    "company_id": 532519,
    "salary_year_avg": "265000.0",
    "skills": "python"
  },
  {
    "job_id": 1325996,
    "job_title": "Chief Data Officer",
    "company_id": 532519,
    "salary_year_avg": "265000.0",
    "skills": "r"
  },
  {
    "job_id": 1325996,
    "job_title": "Chief Data Officer",
    "company_id": 532519,
    "salary_year_avg": "265000.0",
    "skills": "spark"
  },
  {
    "job_id": 1325996,
    "job_title": "Chief Data Officer",
    "company_id": 532519,
    "salary_year_avg": "265000.0",
    "skills": "numpy"
  },
  {
    "job_id": 1325996,
    "job_title": "Chief Data Officer",
    "company_id": 532519,
    "salary_year_avg": "265000.0",
    "skills": "hadoop"
  },
  {
    "job_id": 1325996,
    "job_title": "Chief Data Officer",
    "company_id": 532519,
    "salary_year_avg": "265000.0",
    "skills": "tensorflow"
  },
  {
    "job_id": 1325996,
    "job_title": "Chief Data Officer",
    "company_id": 532519,
    "salary_year_avg": "265000.0",
    "skills": "pytorch"
  },
  {
    "job_id": 1325996,
    "job_title": "Chief Data Officer",
    "company_id": 532519,
    "salary_year_avg": "265000.0",
    "skills": "gdpr"
  },
  {
    "job_id": 1325996,
    "job_title": "Chief Data Officer",
    "company_id": 532519,
    "salary_year_avg": "265000.0",
    "skills": "scikit-learn"
  },
  {
    "job_id": 1325996,
    "job_title": "Chief Data Officer",
    "company_id": 532519,
    "salary_year_avg": "265000.0",
    "skills": "tableau"
  },
  {
    "job_id": 1325996,
    "job_title": "Chief Data Officer",
    "company_id": 532519,
    "salary_year_avg": "265000.0",
    "skills": "power bi"
  },
  {
    "job_id": 1325996,
    "job_title": "Chief Data Officer",
    "company_id": 532519,
    "salary_year_avg": "265000.0",
    "skills": "qlik"
  },
  {
    "job_id": 1325996,
    "job_title": "Chief Data Officer",
    "company_id": 532519,
    "salary_year_avg": "265000.0",
    "skills": "kubernetes"
  },
  {
    "job_id": 1325996,
    "job_title": "Chief Data Officer",
    "company_id": 532519,
    "salary_year_avg": "265000.0",
    "skills": "docker"
  },
  {
    "job_id": 294863,
    "job_title": "Principal Data Scientist, Applied AI",
    "company_id": 36132,
    "salary_year_avg": "262500.0",
    "skills": "sql"
  },
  {
    "job_id": 294863,
    "job_title": "Principal Data Scientist, Applied AI",
    "company_id": 36132,
    "salary_year_avg": "262500.0",
    "skills": "python"
  },
  {
    "job_id": 294863,
    "job_title": "Principal Data Scientist, Applied AI",
    "company_id": 36132,
    "salary_year_avg": "262500.0",
    "skills": "bigquery"
  },
  {
    "job_id": 294863,
    "job_title": "Principal Data Scientist, Applied AI",
    "company_id": 36132,
    "salary_year_avg": "262500.0",
    "skills": "spark"
  },
  {
    "job_id": 294863,
    "job_title": "Principal Data Scientist, Applied AI",
    "company_id": 36132,
    "salary_year_avg": "262500.0",
    "skills": "tensorflow"
  },
  {
    "job_id": 294863,
    "job_title": "Principal Data Scientist, Applied AI",
    "company_id": 36132,
    "salary_year_avg": "262500.0",
    "skills": "pytorch"
  },
  {
    "job_id": 294863,
    "job_title": "Principal Data Scientist, Applied AI",
    "company_id": 36132,
    "salary_year_avg": "262500.0",
    "skills": "scikit-learn"
  },
  {
    "job_id": 294863,
    "job_title": "Principal Data Scientist, Applied AI",
    "company_id": 36132,
    "salary_year_avg": "262500.0",
    "skills": "tableau"
  },
  {
    "job_id": 294863,
    "job_title": "Principal Data Scientist, Applied AI",
    "company_id": 36132,
    "salary_year_avg": "262500.0",
    "skills": "looker"
  },
  {
    "job_id": 245928,
    "job_title": "Data Science Manager",
    "company_id": 23797,
    "salary_year_avg": "262500.0",
    "skills": "sql"
  },
  {
    "job_id": 245928,
    "job_title": "Data Science Manager",
    "company_id": 23797,
    "salary_year_avg": "262500.0",
    "skills": "python"
  },
  {
    "job_id": 245928,
    "job_title": "Data Science Manager",
    "company_id": 23797,
    "salary_year_avg": "262500.0",
    "skills": "scala"
  },
  {
    "job_id": 245928,
    "job_title": "Data Science Manager",
    "company_id": 23797,
    "salary_year_avg": "262500.0",
    "skills": "r"
  },
  {
    "job_id": 245928,
    "job_title": "Data Science Manager",
    "company_id": 23797,
    "salary_year_avg": "262500.0",
    "skills": "spark"
  },
  {
    "job_id": 245928,
    "job_title": "Data Science Manager",
    "company_id": 23797,
    "salary_year_avg": "262500.0",
    "skills": "hadoop"
  },
  {
    "job_id": 199110,
    "job_title": "Staff Data Scientist (Remote)",
    "company_id": 200128,
    "salary_year_avg": "253500.0",
    "skills": "python"
  },
  {
    "job_id": 1275762,
    "job_title": "Head of AI, ML & Data Science - Fintech",
    "company_id": 172469,
    "salary_year_avg": "252500.0",
    "skills": "python"
  },
  {
    "job_id": 58397,
    "job_title": "Director of Data Science, Biostatistics ($260k)",
    "company_id": 3013,
    "salary_year_avg": "250000.0",
    "skills": "sas"
  },
  {
    "job_id": 58397,
    "job_title": "Director of Data Science, Biostatistics ($260k)",
    "company_id": 3013,
    "salary_year_avg": "250000.0",
    "skills": "sas"
  },
  {
    "job_id": 538468,
    "job_title": "Head of Battery Data Science",
    "company_id": 1293,
    "salary_year_avg": "250000.0",
    "skills": "python"
  },
  {
    "job_id": 538468,
    "job_title": "Head of Battery Data Science",
    "company_id": 1293,
    "salary_year_avg": "250000.0",
    "skills": "aws"
  },
  {
    "job_id": 538468,
    "job_title": "Head of Battery Data Science",
    "company_id": 1293,
    "salary_year_avg": "250000.0",
    "skills": "gcp"
  },
  {
    "job_id": 1489914,
    "job_title": "Data Scientist",
    "company_id": 9466,
    "salary_year_avg": "250000.0",
    "skills": "sql"
  },
  {
    "job_id": 1489914,
    "job_title": "Data Scientist",
    "company_id": 9466,
    "salary_year_avg": "250000.0",
    "skills": "python"
  },
  {
    "job_id": 1489914,
    "job_title": "Data Scientist",
    "company_id": 9466,
    "salary_year_avg": "250000.0",
    "skills": "javascript"
  },
  {
    "job_id": 1489914,
    "job_title": "Data Scientist",
    "company_id": 9466,
    "salary_year_avg": "250000.0",
    "skills": "html"
  },
  {
    "job_id": 1489914,
    "job_title": "Data Scientist",
    "company_id": 9466,
    "salary_year_avg": "250000.0",
    "skills": "mongodb"
  },
  {
    "job_id": 1489914,
    "job_title": "Data Scientist",
    "company_id": 9466,
    "salary_year_avg": "250000.0",
    "skills": "vba"
  },
  {
    "job_id": 1489914,
    "job_title": "Data Scientist",
    "company_id": 9466,
    "salary_year_avg": "250000.0",
    "skills": "php"
  },
  {
    "job_id": 1489914,
    "job_title": "Data Scientist",
    "company_id": 9466,
    "salary_year_avg": "250000.0",
    "skills": "mongodb"
  },
  {
    "job_id": 1489914,
    "job_title": "Data Scientist",
    "company_id": 9466,
    "salary_year_avg": "250000.0",
    "skills": "aws"
  },
  {
    "job_id": 1489914,
    "job_title": "Data Scientist",
    "company_id": 9466,
    "salary_year_avg": "250000.0",
    "skills": "tensorflow"
  },
  {
    "job_id": 1489914,
    "job_title": "Data Scientist",
    "company_id": 9466,
    "salary_year_avg": "250000.0",
    "skills": "scikit-learn"
  },
  {
    "job_id": 1489914,
    "job_title": "Data Scientist",
    "company_id": 9466,
    "salary_year_avg": "250000.0",
    "skills": "excel"
  },
  {
    "job_id": 1489914,
    "job_title": "Data Scientist",
    "company_id": 9466,
    "salary_year_avg": "250000.0",
    "skills": "tableau"
  },
  {
    "job_id": 1489914,
    "job_title": "Data Scientist",
    "company_id": 9466,
    "salary_year_avg": "250000.0",
    "skills": "powerpoint"
  },
  {
    "job_id": 1513220,
    "job_title": "Principal Data Scientist (Remote)",
    "company_id": 2852,
    "salary_year_avg": "247500.0",
    "skills": "go"
  },
  {
    "job_id": 1513220,
    "job_title": "Principal Data Scientist (Remote)",
    "company_id": 2852,
    "salary_year_avg": "247500.0",
    "skills": "c"
  },
  {
    "job_id": 1442149,
    "job_title": "Staff Data Scientist, Ads Measurement ML (Remote)",
    "company_id": 23994,
    "salary_year_avg": "247500.0",
    "skills": "sql"
  },
  {
    "job_id": 1442149,
    "job_title": "Staff Data Scientist, Ads Measurement ML (Remote)",
    "company_id": 23994,
    "salary_year_avg": "247500.0",
    "skills": "python"
  },
  {
    "job_id": 1442149,
    "job_title": "Staff Data Scientist, Ads Measurement ML (Remote)",
    "company_id": 23994,
    "salary_year_avg": "247500.0",
    "skills": "r"
  },
  {
    "job_id": 764457,
    "job_title": "Staff Data Scientist, Advertiser Platform Analytics",
    "company_id": 23994,
    "salary_year_avg": "247500.0",
    "skills": "sql"
  },
  {
    "job_id": 764457,
    "job_title": "Staff Data Scientist, Advertiser Platform Analytics",
    "company_id": 23994,
    "salary_year_avg": "247500.0",
    "skills": "python"
  },
  {
    "job_id": 764457,
    "job_title": "Staff Data Scientist, Advertiser Platform Analytics",
    "company_id": 23994,
    "salary_year_avg": "247500.0",
    "skills": "r"
  },
  {
    "job_id": 764457,
    "job_title": "Staff Data Scientist, Advertiser Platform Analytics",
    "company_id": 23994,
    "salary_year_avg": "247500.0",
    "skills": "go"
  },
  {
    "job_id": 764457,
    "job_title": "Staff Data Scientist, Advertiser Platform Analytics",
    "company_id": 23994,
    "salary_year_avg": "247500.0",
    "skills": "tableau"
  },
  {
    "job_id": 764457,
    "job_title": "Staff Data Scientist, Advertiser Platform Analytics",
    "company_id": 23994,
    "salary_year_avg": "247500.0",
    "skills": "looker"
  },
  {
    "job_id": 228641,
    "job_title": "Pre-Sales Data Scientist, Multi Industry",
    "company_id": 4482,
    "salary_year_avg": "243500.0",
    "skills": "sql"
  },
  {
    "job_id": 228641,
    "job_title": "Pre-Sales Data Scientist, Multi Industry",
    "company_id": 4482,
    "salary_year_avg": "243500.0",
    "skills": "python"
  },
  {
    "job_id": 228641,
    "job_title": "Pre-Sales Data Scientist, Multi Industry",
    "company_id": 4482,
    "salary_year_avg": "243500.0",
    "skills": "nosql"
  },
  {
    "job_id": 228641,
    "job_title": "Pre-Sales Data Scientist, Multi Industry",
    "company_id": 4482,
    "salary_year_avg": "243500.0",
    "skills": "r"
  },
  {
    "job_id": 228641,
    "job_title": "Pre-Sales Data Scientist, Multi Industry",
    "company_id": 4482,
    "salary_year_avg": "243500.0",
    "skills": "sas"
  },
  {
    "job_id": 228641,
    "job_title": "Pre-Sales Data Scientist, Multi Industry",
    "company_id": 4482,
    "salary_year_avg": "243500.0",
    "skills": "matlab"
  },
  {
    "job_id": 228641,
    "job_title": "Pre-Sales Data Scientist, Multi Industry",
    "company_id": 4482,
    "salary_year_avg": "243500.0",
    "skills": "azure"
  },
  {
    "job_id": 228641,
    "job_title": "Pre-Sales Data Scientist, Multi Industry",
    "company_id": 4482,
    "salary_year_avg": "243500.0",
    "skills": "aws"
  },
  {
    "job_id": 228641,
    "job_title": "Pre-Sales Data Scientist, Multi Industry",
    "company_id": 4482,
    "salary_year_avg": "243500.0",
    "skills": "redshift"
  },
  {
    "job_id": 228641,
    "job_title": "Pre-Sales Data Scientist, Multi Industry",
    "company_id": 4482,
    "salary_year_avg": "243500.0",
    "skills": "oracle"
  },
  {
    "job_id": 228641,
    "job_title": "Pre-Sales Data Scientist, Multi Industry",
    "company_id": 4482,
    "salary_year_avg": "243500.0",
    "skills": "spark"
  },
  {
    "job_id": 228641,
    "job_title": "Pre-Sales Data Scientist, Multi Industry",
    "company_id": 4482,
    "salary_year_avg": "243500.0",
    "skills": "tableau"
  },
  {
    "job_id": 228641,
    "job_title": "Pre-Sales Data Scientist, Multi Industry",
    "company_id": 4482,
    "salary_year_avg": "243500.0",
    "skills": "sas"
  },
  {
    "job_id": 228641,
    "job_title": "Pre-Sales Data Scientist, Multi Industry",
    "company_id": 4482,
    "salary_year_avg": "243500.0",
    "skills": "qlik"
  },
  {
    "job_id": 152298,
    "job_title": "Lead Data Scientist - Online Platforms Reinforcement Learning (Remote)",
    "company_id": 7114,
    "salary_year_avg": "240000.0",
    "skills": "sql"
  },
  {
    "job_id": 152298,
    "job_title": "Lead Data Scientist - Online Platforms Reinforcement Learning (Remote)",
    "company_id": 7114,
    "salary_year_avg": "240000.0",
    "skills": "python"
  },
  {
    "job_id": 152298,
    "job_title": "Lead Data Scientist - Online Platforms Reinforcement Learning (Remote)",
    "company_id": 7114,
    "salary_year_avg": "240000.0",
    "skills": "bigquery"
  },
  {
    "job_id": 152298,
    "job_title": "Lead Data Scientist - Online Platforms Reinforcement Learning (Remote)",
    "company_id": 7114,
    "salary_year_avg": "240000.0",
    "skills": "tableau"
  },
  {
    "job_id": 1066936,
    "job_title": "Principal Data Scientist",
    "company_id": 2720,
    "salary_year_avg": "240000.0",
    "skills": "sql"
  },
  {
    "job_id": 1066936,
    "job_title": "Principal Data Scientist",
    "company_id": 2720,
    "salary_year_avg": "240000.0",
    "skills": "python"
  },
  {
    "job_id": 1066936,
    "job_title": "Principal Data Scientist",
    "company_id": 2720,
    "salary_year_avg": "240000.0",
    "skills": "java"
  },
  {
    "job_id": 1066936,
    "job_title": "Principal Data Scientist",
    "company_id": 2720,
    "salary_year_avg": "240000.0",
    "skills": "golang"
  },
  {
    "job_id": 1066936,
    "job_title": "Principal Data Scientist",
    "company_id": 2720,
    "salary_year_avg": "240000.0",
    "skills": "gcp"
  },
  {
    "job_id": 1066936,
    "job_title": "Principal Data Scientist",
    "company_id": 2720,
    "salary_year_avg": "240000.0",
    "skills": "tensorflow"
  },
  {
    "job_id": 245337,
    "job_title": "Lead Data Scientist, Marketing & Online (Remote)",
    "company_id": 7114,
    "salary_year_avg": "240000.0",
    "skills": "sql"
  },
  {
    "job_id": 245337,
    "job_title": "Lead Data Scientist, Marketing & Online (Remote)",
    "company_id": 7114,
    "salary_year_avg": "240000.0",
    "skills": "python"
  },
  {
    "job_id": 245337,
    "job_title": "Lead Data Scientist, Marketing & Online (Remote)",
    "company_id": 7114,
    "salary_year_avg": "240000.0",
    "skills": "bigquery"
  },
  {
    "job_id": 245337,
    "job_title": "Lead Data Scientist, Marketing & Online (Remote)",
    "company_id": 7114,
    "salary_year_avg": "240000.0",
    "skills": "tableau"
  },
  {
    "job_id": 511797,
    "job_title": "Principal Data Scientist",
    "company_id": 2297,
    "salary_year_avg": "237500.0",
    "skills": "sql"
  },
  {
    "job_id": 511797,
    "job_title": "Principal Data Scientist",
    "company_id": 2297,
    "salary_year_avg": "237500.0",
    "skills": "python"
  },
  {
    "job_id": 511797,
    "job_title": "Principal Data Scientist",
    "company_id": 2297,
    "salary_year_avg": "237500.0",
    "skills": "r"
  },
  {
    "job_id": 23312,
    "job_title": "Head of Data Science",
    "company_id": 1293,
    "salary_year_avg": "237500.0",
    "skills": "python"
  },
  {
    "job_id": 23312,
    "job_title": "Head of Data Science",
    "company_id": 1293,
    "salary_year_avg": "237500.0",
    "skills": "r"
  },
  {
    "job_id": 23312,
    "job_title": "Head of Data Science",
    "company_id": 1293,
    "salary_year_avg": "237500.0",
    "skills": "matplotlib"
  },
  {
    "job_id": 23312,
    "job_title": "Head of Data Science",
    "company_id": 1293,
    "salary_year_avg": "237500.0",
    "skills": "tableau"
  },
  {
    "job_id": 1268451,
    "job_title": "Staff Data Scientist, Safety Insights (San Francisco, CA or Remote)",
    "company_id": 23994,
    "salary_year_avg": "235375.0",
    "skills": "sql"
  },
  {
    "job_id": 1268451,
    "job_title": "Staff Data Scientist, Safety Insights (San Francisco, CA or Remote)",
    "company_id": 23994,
    "salary_year_avg": "235375.0",
    "skills": "python"
  },
  {
    "job_id": 1268451,
    "job_title": "Staff Data Scientist, Safety Insights (San Francisco, CA or Remote)",
    "company_id": 23994,
    "salary_year_avg": "235375.0",
    "skills": "r"
  },
  {
    "job_id": 51877,
    "job_title": "Head of Data Science (Remote)",
    "company_id": 342343,
    "salary_year_avg": "235000.0",
    "skills": "sql"
  },
  {
    "job_id": 51877,
    "job_title": "Head of Data Science (Remote)",
    "company_id": 342343,
    "salary_year_avg": "235000.0",
    "skills": "python"
  },
  {
    "job_id": 51877,
    "job_title": "Head of Data Science (Remote)",
    "company_id": 342343,
    "salary_year_avg": "235000.0",
    "skills": "r"
  },
  {
    "job_id": 51877,
    "job_title": "Head of Data Science (Remote)",
    "company_id": 342343,
    "salary_year_avg": "235000.0",
    "skills": "c"
  },
  {
    "job_id": 51877,
    "job_title": "Head of Data Science (Remote)",
    "company_id": 342343,
    "salary_year_avg": "235000.0",
    "skills": "databricks"
  },
  {
    "job_id": 51877,
    "job_title": "Head of Data Science (Remote)",
    "company_id": 342343,
    "salary_year_avg": "235000.0",
    "skills": "spark"
  },
  {
    "job_id": 51877,
    "job_title": "Head of Data Science (Remote)",
    "company_id": 342343,
    "salary_year_avg": "235000.0",
    "skills": "pandas"
  },
  {
    "job_id": 51877,
    "job_title": "Head of Data Science (Remote)",
    "company_id": 342343,
    "salary_year_avg": "235000.0",
    "skills": "pyspark"
  },
  {
    "job_id": 51877,
    "job_title": "Head of Data Science (Remote)",
    "company_id": 342343,
    "salary_year_avg": "235000.0",
    "skills": "airflow"
  },
  {
    "job_id": 51877,
    "job_title": "Head of Data Science (Remote)",
    "company_id": 342343,
    "salary_year_avg": "235000.0",
    "skills": "hadoop"
  },
  {
    "job_id": 51877,
    "job_title": "Head of Data Science (Remote)",
    "company_id": 342343,
    "salary_year_avg": "235000.0",
    "skills": "kafka"
  },
  {
    "job_id": 51877,
    "job_title": "Head of Data Science (Remote)",
    "company_id": 342343,
    "salary_year_avg": "235000.0",
    "skills": "pytorch"
  },
  {
    "job_id": 51877,
    "job_title": "Head of Data Science (Remote)",
    "company_id": 342343,
    "salary_year_avg": "235000.0",
    "skills": "nltk"
  },
  {
    "job_id": 51877,
    "job_title": "Head of Data Science (Remote)",
    "company_id": 342343,
    "salary_year_avg": "235000.0",
    "skills": "tidyverse"
  },
  {
    "job_id": 51877,
    "job_title": "Head of Data Science (Remote)",
    "company_id": 342343,
    "salary_year_avg": "235000.0",
    "skills": "docker"
  },
  {
    "job_id": 1794860,
    "job_title": "Director of Data Science (El Segundo, California)",
    "company_id": 1143,
    "salary_year_avg": "231657.296875",
    "skills": "sql"
  },
  {
    "job_id": 1794860,
    "job_title": "Director of Data Science (El Segundo, California)",
    "company_id": 1143,
    "salary_year_avg": "231657.296875",
    "skills": "python"
  },
  {
    "job_id": 1794860,
    "job_title": "Director of Data Science (El Segundo, California)",
    "company_id": 1143,
    "salary_year_avg": "231657.296875",
    "skills": "r"
  },
  {
    "job_id": 1794860,
    "job_title": "Director of Data Science (El Segundo, California)",
    "company_id": 1143,
    "salary_year_avg": "231657.296875",
    "skills": "sas"
  },
  {
    "job_id": 1794860,
    "job_title": "Director of Data Science (El Segundo, California)",
    "company_id": 1143,
    "salary_year_avg": "231657.296875",
    "skills": "spark"
  },
  {
    "job_id": 1794860,
    "job_title": "Director of Data Science (El Segundo, California)",
    "company_id": 1143,
    "salary_year_avg": "231657.296875",
    "skills": "pyspark"
  },
  {
    "job_id": 1794860,
    "job_title": "Director of Data Science (El Segundo, California)",
    "company_id": 1143,
    "salary_year_avg": "231657.296875",
    "skills": "hadoop"
  },
  {
    "job_id": 1794860,
    "job_title": "Director of Data Science (El Segundo, California)",
    "company_id": 1143,
    "salary_year_avg": "231657.296875",
    "skills": "sas"
  },
  {
    "job_id": 1794860,
    "job_title": "Director of Data Science (El Segundo, California)",
    "company_id": 1143,
    "salary_year_avg": "231657.296875",
    "skills": "spss"
  },
  {
    "job_id": 281284,
    "job_title": "Director of Data Science",
    "company_id": 162,
    "salary_year_avg": "230000.0",
    "skills": "python"
  },
  {
    "job_id": 281284,
    "job_title": "Director of Data Science",
    "company_id": 162,
    "salary_year_avg": "230000.0",
    "skills": "tensorflow"
  },
  {
    "job_id": 281284,
    "job_title": "Director of Data Science",
    "company_id": 162,
    "salary_year_avg": "230000.0",
    "skills": "pytorch"
  },
  {
    "job_id": 1824704,
    "job_title": "Staff Data Scientist, Ad Formats & Optimization Analytics (Remote)",
    "company_id": 23994,
    "salary_year_avg": "229500.0",
    "skills": "sql"
  },
  {
    "job_id": 1824704,
    "job_title": "Staff Data Scientist, Ad Formats & Optimization Analytics (Remote)",
    "company_id": 23994,
    "salary_year_avg": "229500.0",
    "skills": "python"
  },
  {
    "job_id": 1824704,
    "job_title": "Staff Data Scientist, Ad Formats & Optimization Analytics (Remote)",
    "company_id": 23994,
    "salary_year_avg": "229500.0",
    "skills": "r"
  },
  {
    "job_id": 1824704,
    "job_title": "Staff Data Scientist, Ad Formats & Optimization Analytics (Remote)",
    "company_id": 23994,
    "salary_year_avg": "229500.0",
    "skills": "go"
  },
  {
    "job_id": 1824704,
    "job_title": "Staff Data Scientist, Ad Formats & Optimization Analytics (Remote)",
    "company_id": 23994,
    "salary_year_avg": "229500.0",
    "skills": "tableau"
  },
  {
    "job_id": 1824704,
    "job_title": "Staff Data Scientist, Ad Formats & Optimization Analytics (Remote)",
    "company_id": 23994,
    "salary_year_avg": "229500.0",
    "skills": "looker"
  },
  {
    "job_id": 52051,
    "job_title": "Staff Data Scientist",
    "company_id": 85807,
    "salary_year_avg": "225000.03125",
    "skills": "python"
  },
  {
    "job_id": 1660315,
    "job_title": "Dovenmuehle Mortgage | Chief Data Scientist (Remote)",
    "company_id": 2179,
    "salary_year_avg": "225000.0",
    "skills": "sql"
  },
  {
    "job_id": 1660315,
    "job_title": "Dovenmuehle Mortgage | Chief Data Scientist (Remote)",
    "company_id": 2179,
    "salary_year_avg": "225000.0",
    "skills": "python"
  },
  {
    "job_id": 1660315,
    "job_title": "Dovenmuehle Mortgage | Chief Data Scientist (Remote)",
    "company_id": 2179,
    "salary_year_avg": "225000.0",
    "skills": "scala"
  },
  {
    "job_id": 1660315,
    "job_title": "Dovenmuehle Mortgage | Chief Data Scientist (Remote)",
    "company_id": 2179,
    "salary_year_avg": "225000.0",
    "skills": "azure"
  },
  {
    "job_id": 1660315,
    "job_title": "Dovenmuehle Mortgage | Chief Data Scientist (Remote)",
    "company_id": 2179,
    "salary_year_avg": "225000.0",
    "skills": "aws"
  },
  {
    "job_id": 1660315,
    "job_title": "Dovenmuehle Mortgage | Chief Data Scientist (Remote)",
    "company_id": 2179,
    "salary_year_avg": "225000.0",
    "skills": "gcp"
  },
  {
    "job_id": 1660315,
    "job_title": "Dovenmuehle Mortgage | Chief Data Scientist (Remote)",
    "company_id": 2179,
    "salary_year_avg": "225000.0",
    "skills": "spark"
  },
  {
    "job_id": 1660315,
    "job_title": "Dovenmuehle Mortgage | Chief Data Scientist (Remote)",
    "company_id": 2179,
    "salary_year_avg": "225000.0",
    "skills": "pandas"
  },
  {
    "job_id": 1660315,
    "job_title": "Dovenmuehle Mortgage | Chief Data Scientist (Remote)",
    "company_id": 2179,
    "salary_year_avg": "225000.0",
    "skills": "numpy"
  },
  {
    "job_id": 1660315,
    "job_title": "Dovenmuehle Mortgage | Chief Data Scientist (Remote)",
    "company_id": 2179,
    "salary_year_avg": "225000.0",
    "skills": "hadoop"
  },
  {
    "job_id": 1660315,
    "job_title": "Dovenmuehle Mortgage | Chief Data Scientist (Remote)",
    "company_id": 2179,
    "salary_year_avg": "225000.0",
    "skills": "scikit-learn"
  },
  {
    "job_id": 1660315,
    "job_title": "Dovenmuehle Mortgage | Chief Data Scientist (Remote)",
    "company_id": 2179,
    "salary_year_avg": "225000.0",
    "skills": "matplotlib"
  },
  {
    "job_id": 1660315,
    "job_title": "Dovenmuehle Mortgage | Chief Data Scientist (Remote)",
    "company_id": 2179,
    "salary_year_avg": "225000.0",
    "skills": "tableau"
  },
  {
    "job_id": 698635,
    "job_title": "Chief Data Scientist (Remote)",
    "company_id": 222566,
    "salary_year_avg": "225000.0",
    "skills": "azure"
  },
  {
    "job_id": 698635,
    "job_title": "Chief Data Scientist (Remote)",
    "company_id": 222566,
    "salary_year_avg": "225000.0",
    "skills": "aws"
  },
  {
    "job_id": 352449,
    "job_title": "Data Science Vice President",
    "company_id": 42273,
    "salary_year_avg": "225000.0",
    "skills": "sql"
  },
  {
    "job_id": 352449,
    "job_title": "Data Science Vice President",
    "company_id": 42273,
    "salary_year_avg": "225000.0",
    "skills": "python"
  },
  {
    "job_id": 991644,
    "job_title": "Director Data Science",
    "company_id": 3013,
    "salary_year_avg": "225000.0",
    "skills": "python"
  },
  {
    "job_id": 991644,
    "job_title": "Director Data Science",
    "company_id": 3013,
    "salary_year_avg": "225000.0",
    "skills": "azure"
  },
  {
    "job_id": 991644,
    "job_title": "Director Data Science",
    "company_id": 3013,
    "salary_year_avg": "225000.0",
    "skills": "databricks"
  },
  {
    "job_id": 991644,
    "job_title": "Director Data Science",
    "company_id": 3013,
    "salary_year_avg": "225000.0",
    "skills": "flow"
  }
]
*/