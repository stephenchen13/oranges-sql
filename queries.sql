UPDATE issues SET status = "self solved"
WHERE user_id = 1;

-- accept solution
-- close issue
UPDATE solutions SET accepted = 1


-- is instructor
-- given an id
SELECT id from users
WHERE role = 1 AND id = 1