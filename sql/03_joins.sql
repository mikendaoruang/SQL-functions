-- JOINs: combine rows from several tables
-- Tables used: job_postings_fact, skills_job_dim, skills_dim, company_dim

-- INNER JOIN: only the rows that match in every table
-- (a job posting with no skill listed does not appear)
SELECT
    job_postings.job_id,
    job_postings.job_title
FROM
    job_postings_fact AS job_postings
INNER JOIN
    skills_job_dim AS skills_to_job ON job_postings.job_id = skills_to_job.job_id
INNER JOIN
    skills_dim AS skills ON skills_to_job.skill_id = skills.skill_id;

-- LEFT JOIN: all rows from the left table, even without a match on the right
-- (a posting with no company still appears, with NULL in the company columns)
SELECT
    job_postings.job_id,
    job_postings.job_title_short,
    job_postings.company_id,
    companies.name
FROM
    job_postings_fact AS job_postings
LEFT JOIN
    company_dim AS companies ON job_postings.company_id = companies.company_id;
