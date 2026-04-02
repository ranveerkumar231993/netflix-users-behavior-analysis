-- Subscription vs Users
SELECT 
    Subscription_Type,
    COUNT(*) AS total_users
FROM netflix_users
GROUP BY Subscription_Type
ORDER BY total_users DESC;

-- Country-wise Users
SELECT 
    Country,
    COUNT(*) AS users
FROM netflix_users
GROUP BY Country
ORDER BY users DESC;

-- Churned analysis
SELECT 
    Subscription_Type,
    Churned,
    COUNT(*) AS users
FROM netflix_users
GROUP BY Subscription_Type, Churned;

-- Device uses by users
SELECT 
    Primary_device,
    COUNT(*) AS users
FROM netflix_users
GROUP BY Primary_device;

-- Most Engaged Users
SELECT *
FROM netflix_users
ORDER BY Avg_watch_time_minutes DESC
LIMIT 10;