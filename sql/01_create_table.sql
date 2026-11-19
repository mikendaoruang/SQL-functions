-- CREATE TABLE: define the columns and their types
CREATE TABLE job_applied (
    job_id INT,
    application_sent_date DATE,
    custom_resume BOOLEAN,
    resume_file_name VARCHAR(255),
    cover_letter_sent BOOLEAN,
    cover_letter_file_name VARCHAR(255),
    status VARCHAR(50)
);

SELECT * FROM job_applied;

-- INSERT INTO: add rows
INSERT INTO job_applied
    (job_id,
     application_sent_date,
     custom_resume,
     resume_file_name,
     cover_letter_sent,
     cover_letter_file_name,
     status)
VALUES
    (1, '2024-06-01', true,  'resume_01.pdf', true,  'cover_letter_01.pdf', 'submitted'),
    (2, '2024-02-02', false, 'resume_02.pdf', false, NULL,                  'interview scheduled'),
    (3, '2024-03-15', true,  'resume_03.pdf', true,  'cover_letter_03.pdf', 'rejected'),
    (4, '2024-04-20', true,  'resume_04.pdf', true,  'cover_letter_04.pdf', 'submitted'),
    (5, '2024-05-10', false, 'resume_05.pdf', false, NULL,                  'offer received');

SELECT * FROM job_applied;

-- ALTER TABLE ... ADD: add a column
ALTER TABLE job_applied
ADD contact VARCHAR(50);

-- UPDATE: fill the new column for one row
UPDATE job_applied
SET contact = 'John Doe'
WHERE job_id = 1;

-- ALTER TABLE ... RENAME COLUMN: rename a column
ALTER TABLE job_applied
RENAME COLUMN contact TO contact_name;

-- ALTER TABLE ... ALTER COLUMN ... TYPE: change the data type
ALTER TABLE job_applied
ALTER COLUMN contact_name TYPE TEXT;

-- ALTER TABLE ... DROP COLUMN: remove a column
ALTER TABLE job_applied
DROP COLUMN contact_name;

SELECT * FROM job_applied;
