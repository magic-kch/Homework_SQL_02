-- создаем жанры
INSERT INTO genre
(id_genre, genre)
VALUES(1, 'Hip Hop'), (2, 'Rock'), (3, 'Pop'), (4, 'Classic'), (5, 'Disco');

-- ссоздаем артистов
INSERT INTO artist
(id_artist, name_artist)
VALUES(1, 'Каста'), (2, 'Scorpions'), (3, 'Metallica'), (4, 'ABBA'), (5, 'Валерия'), (6, 'Света'), (7, 'Бах Йоган'), 
(8, 'Моцарт'), (9, 'Boney M');

-- добавляем артистам жанры
INSERT INTO genreartist
(id_genre, id_artist)
VALUES(1, 1), (3, 5), (3, 6), (2, 2), (2, 3), (5, 4), (5, 9), (4, 7), (4, 8), (3, 4), (3, 9), (4, 1);

-- добавляем альбомы
INSERT INTO album
(id_album, title, create_date)
VALUES(1, 'Наши люди', '1999-01-01'), (2, 'Часики', '2019-12-31'), (3, 'Master of Puppes', '1987-01-01'),
(4, 'Симфония 7', '1900-01-01'), (5, 'Money, money, money', '1980-01-01'), (6, 'Boonoonoonoos', '1978-01-01');

-- добавляем артистам участие в альбомах
INSERT INTO albumartist
(id_album, id_artist)
VALUES(5, 4), (5, 9), (2, 5), (3, 3), (4, 7), (1, 1), (6, 9), (2, 6);

-- добавляем треки
INSERT INTO track
(id_track, id_album, name_track, duratiton)
VALUES(1, 1, 'Наши люди', 180), (2, 1, 'Гончая', 203), (3, 2, 'Мой путь', 160), (4, 2, 'Тик-Так', 251),
	  (5, 1, 'Горячее время', 175), (6, 6, 'Daddy Cool', 165), (7, 6, 'Rasputin', 207),
	  (8, 3, 'Nothing else matter', 247), (9, 3, 'Turn the page', 265), (10, 3, 'Unfogiven II', 198), 
	  (11, 4, 'Симфония 7', 450), (12, 5, 'Money my pleasure', 173);

-- добавляем сборники
INSERT INTO collection
(id_collection, name_collection, create_date)
VALUES(1, 'Best of ballads', '2020-05-24'), (2, 'Танцевальный ретро хит', '2019-01-01'),
(3, 'Популярочка', '2023-01-01'), (4, 'Русский реп', '2010-01-01');

-- добавляет треки в сборники
INSERT INTO trackcollection
(id_track, id_collection)
VALUES(3, 3), (4, 3), (1, 3), (6, 2), (7, 2), (12, 2), (8, 1), (9, 1), (1, 4), (2, 4);

