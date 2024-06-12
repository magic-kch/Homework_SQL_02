-- Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
SELECT a.title FROM album a
JOIN albumartist aa ON a.id_album = aa.id_album 
JOIN genreartist ga ON aa.id_artist = ga.id_artist
GROUP BY a.title 
HAVING count(ga.id_genre) >= 2 

-- Наименования треков, которые не входят в сборники.
SELECT t.name_track FROM track t 
LEFT JOIN trackcollection tc ON t.id_track = tc.id_track
WHERE tc.id_track IS NULL
 
-- Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько.
SELECT DISTINCT a.name_artist FROM artist a
JOIN albumartist aa ON a.id_artist = aa.id_artist 
JOIN album al ON aa.id_album = al.id_album 
JOIN track t ON al.id_album = t.id_album 
GROUP BY a.name_artist, t.duratiton  
HAVING t.duratiton = (SELECT min(duratiton) FROM track); 

-- Названия альбомов, содержащих наименьшее количество треков.
SELECT a.title, count(t.id_track)  FROM album a 
JOIN track t ON a.id_album = t.id_album 
GROUP BY a.title 
HAVING count(t.id_track) = (SELECT min(t1.c) FROM (SELECT count(*) c FROM album a1 GROUP BY a1.id_album) t1 ) 






