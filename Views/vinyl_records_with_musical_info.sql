USE vinyl_records;

CREATE OR REPLACE VIEW vinyl_records_with_musical_info AS
	SELECT album_name AS "Album Name:", song_name AS "Song Name:", artist_name AS "Artist Name:", 
		track_num AS "Track Number:", duration AS "Duration:", `key` AS "Musical Key:"
    FROM songs
		JOIN vinyl
			USING(vinyl_id)
		JOIN singers
			USING(singer_id)
		JOIN musical_info
			USING(song_id)
	WHERE track_num = 1
    GROUP BY album_name
    ORDER BY `key`