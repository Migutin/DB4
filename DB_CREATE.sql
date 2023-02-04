create table if not exists genre (
		genreID serial primary key,
		tittle text
);
create table if not exists artist (
		artistID serial primary key,
		name text
);
create table if not exists artist_genre (
		artist_genreID serial primary key,
		genreID integer references genre (genreID),
		artistID integer references artist (artistID)
);
create table if not exists album (
		albumID serial primary key,
		title text,
		year_of_release_album date
);
create table if not exists artist_album (
		artist_albumID serial primary key,
		albumID integer references album (albumID),
		artistID integer references artist (artistID)
);
create table if not exists track (
		trackID serial primary key,
		name text,
		duration time,
		albumID integer references album (albumID)
);
create table if not exists digets (
		digetsID serial primary key,
		name_digets text,
		year_of_release_digets date
);
create table if not exists digets_collection (
		digets_collectionID serial primary key,
		digetsID integer references digets (digetsID),
		trackID integer references track (trackID)
		
);
