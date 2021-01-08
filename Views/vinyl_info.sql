USE project;

CREATE OR REPLACE VIEW vinyl_info AS
		SELECT artist_name AS "Artist Name", album_name AS "Album Name", 
			genre AS "Genre", track_amount "Number of Songs", runtime AS "Runtime",
			first_available AS "Date when First Available", IF(is_explicit, "True", "False") AS "Is Explicit?"
		FROM vinyl JOIN singers
			USING(singer_id)
		ORDER BY artist_name, album_name;
        
SELECT *
FROM vinyl_info
    