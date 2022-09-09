-- playlist with most downloads
SELECT p.PlaylistId, p.Name, SUM(il.Quantity) Purchases
FROM Playlist p
JOIN PlaylistTrack pt
ON p.PlaylistId = pt.PlaylistId
JOIN Track t
ON t.TrackId = pt.TrackId
JOIN InvoiceLine il
ON il.TrackId = t.TrackId
GROUP BY 1
ORDER BY 3 DESC;