--Part 1
CREATE TABLE job (
    INTEGER id,
    VARCHAR(255) employer,
    VARCHAR(255) name,
    VARCHAR(255) skills
);

--Part 2
SELECT name
FROM employer
WHERE location = "St. Louis City";
--Part 3
DROP TABLE job;

--Part 4

SELECT *
FROM skill
LEFT JOIN job_skills ON skill_id = job_skills.skills_id
WHERE job_skills.jobs_id IS NOT NULL
ORDER BY name ASC;