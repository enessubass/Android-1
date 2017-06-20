## In-class

1. produce a list of all the artists, with their albums, in alphabetical order of artist name.

SELECT artists.name AS artist, albums.name AS album 
FROM artists
INNER JOIN albums ON artists._id = albums.artist ORDER BY artists.name;

2. Produce a list of all the tracks, with their title and album name.

SELECT songs.track, songs.title, albums.name FROM songs INNER JOIN albums 
ON songs.album = albums._id;


3. Produce a list of all the artist's name, album's name, song's track number and song's title in alphabetical order of their artist's name and album's name and song's track.

SELECT artists.name, albums.name, songs.track, songs.title 
FROM songs 
INNER JOIN albums ON songs.album = albums._id
INNER JOIN artists ON albums.artist = artists._id
ORDER BY artists.name, albums.name, songs.track;

4. Select all the records that has "doctor" in their song title from the result of Q3. 

SELECT artists.name, albums.name, songs.track, songs.title 
FROM songs 
INNER JOIN albums ON songs.album = albums._id
INNER JOIN artists ON albums.artist = artists._id
WHERE songs.title LIKE "%doctor%"
ORDER BY artists.name, albums.name, songs.track;


5. VIEW of artist list 

CREATE VIEW artist_list AS
SELECT artists.name AS artist, albums.name AS album, songs.track, songs.title 
FROM songs 
INNER JOIN albums ON songs.album = albums._id
INNER JOIN artists ON albums.artist = artists._id
ORDER BY artists.name, albums.name, songs.track;


## Assignment
1. Select the titles of all the songs on the album "Forbidden".

2. Repeat the previous query but this time display the songs in track order.
You may want to include the track number in the output to verify that it worked fine.

3. Display all songs for the band "Deep Purple".

4. Rename the band "Mehitabel" to "One Kitten".
Note: SET artists.name will not work, you just need to specifiy name.

5. Check that the record was correctly renamed.

6. Select the titles of all the songs by Aerosmith in alphabetical order. Include only the title in the output.

7. Replace tyhe column that you used in the previous answer with count(title) to get just a count of the number of songs.

8. Search the internet to find out how to get a list of the songs from step 6 without any duplicates.


9. Search the internet again to find out how to get a count of the songs without duplicates. Hint: It uses the same keyword as step 8 but syntax may not be obvious.


10. Repeat the previous query to find the number of artists (which, obviously, should be one) and the number of albums.





























