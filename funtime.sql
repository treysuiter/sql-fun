-- join examples

SELECT s.SongId, s.title, ar.ArtistName
FROM Song s
join Artist ar
on s.ArtistId = ar.ArtistId
where s.ArtistId = 3;

SELECT title, domestic_sales, international_sales
FROM movies
    JOIN Boxoffice
        ON movies.id = boxoffice.movie_id
ORDER BY RATING DESC;

--left join

SELECT s.SongId, s.title, ar.ArtistName
FROM Artist ar
LEFT JOIN Song s
on s.ArtistId = ar.ArtistId
where ar.ArtistId = 1;


--trick shot aka count

SELECT count() as num_of_songs, Artist.ArtistName
FROM Song
JOIN Artist
ON Song.ArtistId = Artist.ArtistId
GROUP BY Song.ArtistId
ORDER BY num_of_songs DESC;

--create an custome column

SELECT al.Title || " by " || ar.ArtistName
FROM Album al
JOIN Artist ar
ON al.ArtistId = ar.ArtistId;

--Music History

--Query all of the entries in the Genre table

SELECT * FROM Genre;

--Using the INSERT statement, add one of your favorite artists to the Artist table.

INSERT INTO Artist (ArtistName, YearEstablished)
VALUES ("Black Sabbath", 1969);


--Using the INSERT statement, add one, or more, albums by your artist to the Album table.

INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId)
VALUES ("Paranoid", "09/01/1079", 2520, "Warner Bros.", 28, 5);

--Using the INSERT statement, add some songs that are on that album to the Song table.

INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
VALUES ("War Pigs", 480, "09/01/1970", 5, 28, 23);


