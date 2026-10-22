CREATE DATABASE IF NOT EXISTS netflix_db;
USE netflix_db;

-- 1. Total number of records
SELECT COUNT(*) AS total_titles
FROM netflixutf;

-- 2. Movie and TV Show distribution
SELECT
    type,
    COUNT(*) AS total_titles,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM netflixutf),
        2
    ) AS percentage
FROM netflixutf
GROUP BY type
ORDER BY total_titles DESC;

-- 3. Missing-value analysis
SELECT
    COUNT(*) AS total_records,
    SUM(CASE WHEN title IS NULL OR TRIM(title) = ''
        THEN 1 ELSE 0 END) AS missing_titles,
    SUM(CASE WHEN director IS NULL OR TRIM(director) = ''
        THEN 1 ELSE 0 END) AS missing_directors,
    SUM(CASE WHEN country IS NULL OR TRIM(country) = ''
        THEN 1 ELSE 0 END) AS missing_countries,
    SUM(CASE WHEN rating IS NULL OR TRIM(rating) = ''
        THEN 1 ELSE 0 END) AS missing_ratings
FROM netflixutf;

-- 4. Content released each year
SELECT
    release_year,
    COUNT(*) AS total_titles
FROM netflixutf
WHERE release_year IS NOT NULL
GROUP BY release_year
ORDER BY release_year DESC;

-- 5. Top content ratings
SELECT
    rating,
    COUNT(*) AS total_titles
FROM netflixutf
WHERE rating IS NOT NULL
  AND TRIM(rating) <> ''
GROUP BY rating
ORDER BY total_titles DESC
LIMIT 10;