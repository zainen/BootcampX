-- SELECT 
--   assignments.id AS id,
--   assignments.name AS name,
--   assignments.day AS day,
--   assignments.chapter AS chapter,
--   count(assistance_requests.*) as total_requests
-- FROM assignments
-- JOIN assistance_requests ON assignments.id = assignment_id
-- GROUP BY assignments.id
-- ORDER BY total_requests desc;
SELECT assignments.id, name, day, chapter, count(assistance_requests) as total_requests
FROM assignments
JOIN assistance_requests ON assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY total_requests DESC;