INSERT INTO
	artist(artistID, name)
VALUES
	(1, 'artist_1'),
	(2, 'artist_2'),
	(3, 'artist_3'),
    (4, 'artist_4'),
    (5, 'artist_5'),
    (6, 'artist_6'),
    (7, 'artist_7'),
    (8, 'artist_8');


INSERT INTO
	genre(genreID, tittle)
VALUES
    (1, 'genre_1'),
    (2, 'genre_2'),
    (3, 'genre_3'),
    (4, 'genre_4'),
    (5, 'genre_5');
    

INSERT INTO
	album(albumID, title, year_of_release_album)
VALUES
    (1, 'album_1', '2020-12-15'),
    (2, 'album_2', '2010-11-01'),
    (3, 'album_3', '2018-08-11'),
    (4, 'album_4', '2015-09-30'),
    (5, 'album_5', '1999-06-15'),
    (6, 'album_6', '2009-03-11'),
    (7, 'album_7', '1990-07-13'),
    (8, 'album_8', '1986-01-16');

INSERT INTO
	track(trackID, name, duration,albumID)
VALUES
    (1, 'track_1 my', '00:03:02',1),
    (2, 'track_2', '00:03:30',2),
    (3, 'track_3', '00:04:13',3),
    (4, 'track_4', '00:03:12',4),
    (5, 'my_track_5', '00:04:05',5),
    (6, 'track_6', '00:03:05',6),
    (7, 'track_7', '00:03:50',7),
    (8, 'track_8', '00:04:20',8),
    (9, 'track_9', '00:05:50',1),
    (10, 'track my 10', '00:04:30',2),
    (11, 'track_11', '00:02:55',3),
    (12, 'track_12', '00:03:40',4),
    (13, 'track_13', '00:05:20',5),
    (14, 'track_14', '00:01:45',6),
    (15, 'my track_15', '00:02:55',7);

INSERT INTO
	digets(digetsID, name_digets, year_of_release_digets)
VALUES
    (1, 'digets_1', '2020-11-15'),
    (2, 'digets_2', '2018-01-15'),
    (3, 'digets_3', '2019-02-03'),
    (4, 'digets_4', '2010-11-15'),
    (5, 'digets_5', '2021-06-15'),
    (6, 'digets_6', '2012-08-18'),
    (7, 'digets_7', '2005-07-16'),
    (8, 'digets_8', '2011-02-20');

INSERT INTO
	artist_genre(artist_genreID, genreID, artistID)
VALUES
    (1, 1, 8),
    (2, 1, 7),
    (3, 2, 5),
    (4, 2, 4),
    (5, 3, 3),
    (6, 3, 2),
    (7, 4, 1),
    (8, 4, 6),
    (9, 5, 8),
    (10, 5, 1);

INSERT INTO
	artist_album(artist_albumID, albumID, artistID)
VALUES
    (1, 1, 8),
    (2, 2, 7),
    (3, 3, 5),
    (4, 4, 4),
    (5, 5, 3),
    (6, 6, 2),
    (7, 7, 1),
    (8, 8, 6),
    (9, 1, 8);
    
INSERT INTO
	digets_collection(digets_collectionID, digetsID, trackID)
VALUES
    (1, 1, 15),
    (2, 2, 14),
    (3, 3, 13),
    (4, 4, 12),
    (5, 5, 11),
    (6, 6, 10),
    (7, 7, 9),
    (8, 8, 8),
    (9, 1, 7),
    (10, 2, 6),
    (11, 3, 5),
    (12, 4, 4),
    (13, 5, 3),
    (14, 6, 2),
    (15, 7, 1);