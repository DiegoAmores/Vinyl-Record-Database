USE project;

CREATE OR REPLACE VIEW vinyl_certification AS
	SELECT album_name AS "Album Name", artist_name, genre AS "Genre",
		IFNULL(CONCAT(producer_fn, " ", producer_ln), producer_fn) AS "Producer Name", 
		IF(diamond, "Yes", "No") AS "Diamond", IF(multi_platinum, "Yes", "No") AS "Multi Platinum"
	FROM vinyl v
		JOIN certification 
			USING(vinyl_id)
		JOIN producers
			USING(producer_id)
		JOIN singers
			USING(singer_id)
	WHERE multi_platinum = 1 OR diamond = 1
	ORDER BY multi_platinum DESC, album_name;


SELECT *
FROM vinyl_certification;
