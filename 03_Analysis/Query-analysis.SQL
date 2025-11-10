
-------------------------------------------------------------
--------------------- youtube_trending ----------------------
-------------------------------------------------------------

-- 1. Show all columns for trending videos from Egypt
SELECT *
FROM youtube_trending
WHERE country_name = 'Egypt';


-- 2. List all distinct languages available in the dataset
SELECT DISTINCT langauge
FROM youtube_trending;


-- 3. Find the total number of videos in the dataset
SELECT COUNT(*) AS total_videos
FROM youtube_trending;


-- 4. Display video titles and their like counts for videos trending in the USA
SELECT title, like_count
FROM youtube_trending
WHERE country_name = 'United States';


-- 5. Retrieve all videos published in 2025
SELECT *
FROM youtube_trending
WHERE publish_date LIKE '2025%';


-- 6. Find the top 10 videos with the highest view counts
SELECT TOP 10 title, channel_name, CAST(view_count AS INT) AS views
FROM youtube_trending
ORDER BY views DESC;


-- 7. Count how many videos each country has in trending
SELECT country_name, COUNT(*) AS trending_count
FROM youtube_trending
GROUP BY country_name
ORDER BY trending_count DESC;


-- 8. Find the average likes per country
SELECT country_name, ROUND(AVG(CAST(like_count AS FLOAT)), 2) AS avg_likes
FROM youtube_trending
GROUP BY country_name
ORDER BY avg_likes DESC;


-- 9. Get the number of videos with missing descriptions
SELECT COUNT(*) AS missing_descriptions
FROM youtube_trending
WHERE description IS NULL OR description = '';


-- 10. Show the top 5 videos with the highest comment rates
SELECT TOP 5 title, channel_name, CAST(comment_rate AS FLOAT) AS comment_rate
FROM youtube_trending
ORDER BY comment_rate DESC;


-- 11. Rank videos within each country by view count
SELECT country_name, title,
       RANK() OVER (PARTITION BY country_name ORDER BY CAST(view_count AS INT) DESC) AS rank_in_country
FROM youtube_trending;


-- 12. Find the most liked video for each language
SELECT langauge, title, MAX(CAST(like_count AS INT)) AS max_likes
FROM youtube_trending
GROUP BY langauge;


-- 13. Calculate the average daily movement by country
SELECT country_name, ROUND(AVG(CAST(daily_movement AS FLOAT)), 2) AS avg_movement
FROM youtube_trending
GROUP BY country_name
ORDER BY avg_movement DESC;


-- 14. Find channels that appear in more than one country
SELECT channel_name, COUNT(DISTINCT country_name) AS countries_featured
FROM youtube_trending
GROUP BY channel_name
HAVING COUNT(DISTINCT country_name) > 1;


-- 15. Get the average views per trending tag
SELECT trend_tags, ROUND(AVG(CAST(view_count AS FLOAT)), 2) AS avg_views
FROM youtube_trending
GROUP BY trend_tags
ORDER BY avg_views DESC;


-- 16. Use a CTE to find videos with above-average likes per country
WITH country_avg AS (
    SELECT country_name, AVG(CAST(like_count AS FLOAT)) AS avg_likes
    FROM youtube_trending
    GROUP BY country_name
)
SELECT y.title, y.country_name, y.like_count
FROM youtube_trending AS y
JOIN country_avg AS c ON y.country_name = c.country_name
WHERE CAST(y.like_count AS FLOAT) > c.avg_likes;


-- 17. Find the percentage of videos marked as outliers per country
SELECT country_name,
       ROUND(100.0 * SUM(CASE WHEN outlier = '1' THEN 1 ELSE 0 END) / COUNT(*), 2) AS outlier_percentage
FROM youtube_trending
GROUP BY country_name
ORDER BY outlier_percentage DESC;


-- 18. Determine which period (e.g., ‘Daily’, ‘Weekly’) has the highest average views
SELECT period, ROUND(AVG(CAST(view_count AS FLOAT)), 2) AS avg_views
FROM youtube_trending
GROUP BY period
ORDER BY avg_views DESC;


-- 19. Find the correlation between views and likes by calculating the ratio (likes/view_count)
SELECT TOP 10 title,
       ROUND(CAST(like_count AS FLOAT) / NULLIF(CAST(view_count AS FLOAT), 0), 4) AS like_view_ratio
FROM youtube_trending
ORDER BY like_view_ratio DESC;


-- 20. List top 5 languages with the highest engagement rate (likes + comments per view)
SELECT TOP 5 langauge,
       ROUND(AVG((CAST(like_count AS FLOAT) + CAST(comment_count AS FLOAT)) /
       NULLIF(CAST(view_count AS FLOAT), 0)), 4) AS engagement_rate
FROM youtube_trending
GROUP BY langauge
ORDER BY engagement_rate DESC;
