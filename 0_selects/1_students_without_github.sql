SELECT id, name, email, cohort_id 
FROM students
WHERE github IS NULL  --HAVE TO USE "IS NULL" BECAUSE "NULL = NULL" IS RETURNS FALSE --
ORDER BY cohort_id;