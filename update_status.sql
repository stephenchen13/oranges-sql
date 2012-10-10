-- #update all issues older than 15 minutes with a status to open
-- #return creator name, age of issue, issue content

UPDATE issues SET status = "open"
WHERE datetime(created_at, "+15 minutes") < CURRENT_TIMESTAMP;

SELECT users.name, issues.content, (strftime('%s', 'now') - strftime('%s', issues.created_at)) / 60
FROM issues
JOIN users
ON issues.user_id = users.id AND issues.user_id = 1 AND issues.status = "open";

-- SELECT * FROM issues
-- WHERE datetime(created_at, "+15 minutes") < CURRENT_TIMESTAMP;

UPDATE issues SET status = "instructor needed"
WHERE datetime(created_at, "+45 minutes") < CURRENT_TIMESTAMP;