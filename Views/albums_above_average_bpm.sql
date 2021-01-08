USE project;

CREATE OR REPLACE VIEW albums_above_average_bpm AS
SELECT album_name AS "Album" , artist_name AS "Artist", song_name AS "Song", 
	genre, bpm AS "Beats Per Minute"
FROM vinyl 
	JOIN singers
		USING(singer_id)
    JOIN songs
		USING(vinyl_id)
    JOIN musical_info
		USING(song_id)
WHERE bpm > (
	SELECT AVG(bpm)
    FROM musical_info
    )
ORDER BY bpm DESC;

SELECT * 
FROM albums_above_average_bpm