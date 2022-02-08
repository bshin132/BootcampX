CREATE TABLE cohorts (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  start_date DATE,
  end_date DATE
);

CREATE TABLE students (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255),
  phone VARCHAR(32),
  github VARCHAR(255),
  start_date DATE,
  end_date DATE,
  cohort_id INTEGER REFERENCES cohorts(id) ON DELETE CASCADE
);

-- SELECT students.name as student_name, cohorts.name as cohort_name, cohorts.start_date as cohort_start_date, students.start_date as student_start_date
-- FROM students
-- INNER JOIN cohorts ON cohorts.id = students.cohort_id 
-- WHERE students.start_date != cohorts.start_date
-- ORDER BY cohorts.start_date;

-- --ORDER DOESNT MATTER, WILL GET THE SAME RESULT
-- SELECT students.name as student_name, cohorts.name as cohort_name, cohorts.start_date as cohort_start_date, students.start_date as student_start_date
-- FROM cohorts
-- INNER JOIN students ON students.cohort_id = cohorts.id  
-- WHERE students.start_date != cohorts.start_date
-- ORDER BY cohorts.start_date;