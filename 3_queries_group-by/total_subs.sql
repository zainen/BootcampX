SELECT cohorts.name as cohort, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.start_date = students.start_date
GROUP BY cohorts.name
ORDER BY total_submissions desc;