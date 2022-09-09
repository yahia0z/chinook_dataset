-- Breakdown of genres in the library
SELECT g.Name Genre, count(*) No_of_Tracks
FROM Genre g
JOIN Track t
ON t.GenreId = g.GenreId
GROUP BY g.GenreId
ORDER BY 2 DESC;