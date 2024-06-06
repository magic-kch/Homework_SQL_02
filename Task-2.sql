
-- Название и продолжительность самого длительного трека.
SELECT name_track, duratiton FROM track
WHERE duratiton = (SELECT max(duratiton) FROM track);

-- Название треков, продолжительность которых не менее 3,5 минут.
SELECT name_track FROM track
WHERE duratiton >= 210;

-- Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT name_collection  FROM collection
WHERE create_date BETWEEN '2018/01/01' AND '2020/12/31';

-- Исполнители, чьё имя состоит из одного слова.
SELECT name_artist  FROM artist
WHERE name_artist NOT LIKE '% %' 

-- Название треков, которые содержат слово «мой» или «my».
SELECT name_track FROM track
WHERE name_track LIKE  '%my%' OR name_track LIKE '%Мой%';
