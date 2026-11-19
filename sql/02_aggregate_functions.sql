-- Aggregate functions: MIN, MAX, AVG, COUNT
-- Table used: job_postings_fact (job postings from my SQL course)

-- MIN, MAX, AVG on one job title
SELECT
    AVG(salary_year_avg) AS salary_avg,
    MIN(salary_year_avg) AS salary_min,
    MAX(salary_year_avg) AS salary_max
FROM
    job_postings_fact
WHERE
    job_title_short = 'Data Analyst';

-- GROUP BY + ORDER BY: same stats for every job title, lowest average first
SELECT
    job_title_short AS jobs,
    AVG(salary_year_avg) AS salary_avg,
    MIN(salary_year_avg) AS salary_min,
    MAX(salary_year_avg) AS salary_max
FROM
    job_postings_fact
GROUP BY
    job_title_short
ORDER BY
    salary_avg;

-- HAVING: keep only the job titles with more than 100 postings
-- (WHERE filters rows before grouping, HAVING filters groups after)
SELECT
    job_title_short AS jobs,
    COUNT(job_title_short) AS job_count,
    AVG(salary_year_avg) AS salary_avg,
    MIN(salary_year_avg) AS salary_min,
    MAX(salary_year_avg) AS salary_max
FROM
    job_postings_fact
GROUP BY
    job_title_short
HAVING
    COUNT(job_title_short) > 100
ORDER BY
    salary_avg;
