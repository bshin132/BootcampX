SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON student_id = students.id --FIRST GET THE STUDENTS TABLE BECAUSE ASSIGNMENT_SUBMISSIONS HAS A PK
JOIN cohorts ON cohort_id = cohorts.id    --SECOND GET THE COHORTS TABLE BECAUSE STUDENTS TABLE HAS A PK
WHERE cohorts.name = 'FEB12';