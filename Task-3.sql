-- Количество исполнителей в каждом жанре.
SELECT count(id_artist) FROM genreartist
GROUP BY id_genre;

-- Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT count(name_track) FROM track t
JOIN album a ON t.id_album = a.id_album 
WHERE a.create_date BETWEEN '2019/01/01' AND '2020/12/31';

-- Средняя продолжительность треков по каждому альбому.
SELECT avg(duratiton) FROM track t
GROUP BY id_album; 

-- Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT ar.name_artist FROM artist ar
JOIN albumartist aa ON ar.id_artist = aa.id_artist 
LEFT JOIN album al ON aa.id_album = al.id_album
WHERE al.create_date BETWEEN '2020/01/01' AND '2020/12/31'



-- Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT ar.name_artist FROM artist ar
JOIN albumartist aa ON ar.id_artist = aa.id_artist 
JOIN album al ON aa.id_album = al.id_album
EXCEPT SELECT ar.name_artist FROM artist ar
JOIN albumartist aa ON ar.id_artist = aa.id_artist 
JOIN album al ON aa.id_album = al.id_album
WHERE al.create_date BETWEEN '2020/01/01' AND '2020/12/31'


--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT DISTINCT c.name_collection FROM collection c
JOIN trackcollection tc ON c.id_collection = tc.id_collection 
JOIN track t ON tc.id_track = t.id_track
JOIN album a ON t.id_album = a.id_album 
JOIN albumartist aa ON a.id_album = aa.id_album 
JOIN artist ar ON aa.id_artist = ar.id_artist
WHERE ar.name_artist = 'Каста'


