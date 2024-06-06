CREATE TABLE IF NOT EXISTS Artist (
id_artist SERIAL PRIMARY KEY,
name_artist VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Album (
id_album SERIAL PRIMARY KEY,
title TEXT NOT NULL,
create_date DATE NOT NULL,
CHECK  (create_date >='1900-01-01' AND create_date <= NOW())
);

CREATE TABLE IF NOT EXISTS Track (
id_track SERIAL PRIMARY KEY,
id_album INTEGER NOT NULL REFERENCES Album(id_album),
name_track TEXT NOT NULL,
duratiton INTEGER
);

CREATE TABLE IF NOT EXISTS Genre (
id_genre SERIAL PRIMARY KEY,
genre TEXT
);

CREATE TABLE IF NOT EXISTS GenreArtist (
id_genre INTEGER NOT NULL REFERENCES Genre(id_genre),
id_artist INTEGER NOT NULL REFERENCES Artist(id_artist),
CONSTRAINT pk_GA PRIMARY KEY (id_genre, id_artist)
);

CREATE TABLE IF NOT EXISTS AlbumArtist (
id_album INTEGER NOT NULL REFERENCES Album(id_album),
id_artist INTEGER NOT NULL REFERENCES Artist(id_artist),
CONSTRAINT pk_AA PRIMARY KEY (id_album, id_artist)
);

CREATE TABLE IF NOT EXISTS Collection (
id_collection SERIAL PRIMARY KEY,
name_collection TEXT NOT NULL,
create_date DATE NOT NULL,
CHECK  (create_date >='1900-01-01' AND create_date <= NOW())
);

CREATE TABLE TrackCollection (
id_track INTEGER NOT NULL REFERENCES Track(id_track),
id_collection INTEGER NOT NULL REFERENCES Collection(id_collection),
CONSTRAINT pk_TC PRIMARY KEY (id_track, id_collection)
);
