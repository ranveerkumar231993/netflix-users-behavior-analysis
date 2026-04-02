-- Total Netflix Users 
SELECT COUNT(*) AS total_users 
FROM netflix_users;

-- Churned Rate
SELECT 
    Churned,
    COUNT(*) AS users
FROM netflix_users
GROUP BY Churned;

-- Avg Watch Time in netflix by users
SELECT 
    AVG(Avg_watch_time_minutes) AS avg_watch_time_
FROM netflix_users;
-- Revenue
SELECT 
    SUM(Monthly_Fee) AS total_revenue
FROM netflix_users;