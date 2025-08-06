-- Create a new database for the Spotify project
CREATE DATABASE IF NOT EXISTS spotify_db;

-- Switch to the newly created database
USE spotify_db;

-- Create a table to store Spotify track metadata
CREATE TABLE IF NOT EXISTS spotify_tracks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    track_name VARCHAR(255),
    artist VARCHAR(255),
    album VARCHAR(255),
    popularity INT,
    duration_minutes FLOAT
);

-- ✅ View all records from the spotify_tracks table
SELECT * FROM spotify_tracks;

-- ✅ Query to get the most popular track
SELECT track_name, artist, album, popularity
FROM spotify_tracks
ORDER BY popularity DESC
LIMIT 1;

-- ✅ Calculate the average popularity of all tracks
SELECT AVG(popularity) AS average_popularity
FROM spotify_tracks;

-- ✅ Get tracks longer than 4 minutes
SELECT track_name, artist, duration_minutes
FROM spotify_tracks
WHERE duration_minutes > 4.0;

-- ✅ Categorize tracks based on popularity score
SELECT
    CASE
        WHEN popularity >= 80 THEN 'Very Popular'
        WHEN popularity >= 50 THEN 'Popular'
        ELSE 'Less Popular'
    END AS popularity_range,
    COUNT(*) AS track_count
FROM spotify_tracks
GROUP BY popularity_range;
