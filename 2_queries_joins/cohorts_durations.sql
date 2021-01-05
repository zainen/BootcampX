-- id|assignment id|student id|duration|submission date
SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'FEB12';

-- id|name|email|phone|git|start|end
-- SELECT *
-- FROM students


-- id|name|start|end
-- SELECT *
-- FROM cohorts
