# SQL Functions: basics to advanced

SQL functions and queries I wrote while learning, with short comments and screenshots of the results.
Everything runs on PostgreSQL (I use VS Code with the SQLTools extension).

This repo is a work in progress. I add new functions as I learn them.

## Contents

| File | Topic | Functions |
|------|-------|-----------|
| [sql/01_create_insert_alter.sql](sql/01_create_insert_alter.sql) | Create and change a table | CREATE TABLE, INSERT INTO, ALTER TABLE (ADD, RENAME, ALTER TYPE, DROP), UPDATE |
| [sql/02_aggregate_functions.sql](sql/02_aggregate_functions.sql) | Summarize data | MIN, MAX, AVG, COUNT, GROUP BY, ORDER BY, HAVING |
| [sql/03_joins.sql](sql/03_joins.sql) | Combine tables | INNER JOIN, LEFT JOIN |

## 1. Create and change a table

I built a `job_applied` table to track my own job applications: dates, resume file, cover letter, status.

**CREATE TABLE**

![CREATE TABLE](images/CREATE%20TABLE.png)

**INSERT INTO**

![INSERT INTO](images/INSERT%20INTO.png)

**ALTER TABLE**: adding a `contact` column

![ALTER TABLE](images/ALTER%20TABLE.png)

## 2. Aggregate functions

Data: `job_postings_fact`, a table of data job postings with a yearly salary column.

**MIN, MAX, AVG** for the Data Analyst job title

![MIN MAX AVG](images/Function%20MIN%20MAX%20AVG.png)

**GROUP BY and ORDER BY**: the same stats for every job title, sorted by average salary

![GROUP BY ORDER BY](images/Function%20GROUP%20BY%20ORDER%20BY.png)

**HAVING**: only the job titles with more than 100 postings

![HAVING](images/Function%20HAVING.png)

## 3. Joins

**INNER JOIN**: job postings linked to their skills through `skills_job_dim`

![INNER JOIN](images/Function%20INNER%20JOIN.png)

**LEFT JOIN**: all job postings, with the company name when there is one

![LEFT JOIN](images/Function%20LEFT%20JOIN.png)

## Next

String functions, date functions, CASE WHEN, window functions and CTEs.

## Author

Miken Daoruang, Data Analytics & Marketing.
[LinkedIn](https://www.linkedin.com/in/miken-daoruang-249173200)
