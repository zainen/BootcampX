-- SELECT SUM(completed_at - started_at) / count(*) AS average_assistance_request_duration
-- FROM assistance_requests

SELECT avg(completed_at - started_at) as average_assistance_request_duration
FROM assistance_requests;