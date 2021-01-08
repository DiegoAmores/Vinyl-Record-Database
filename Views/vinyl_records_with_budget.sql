USE vinyl_records;

CREATE OR REPLACE VIEW vinyl_records_with_budget AS
	SELECT album_name AS 'Album Name:', artist_name AS "Artist Name:", IFNULL(CONCAT(producer_fn, " ", producer_ln), producer_fn) AS "Producer:", genre AS "Genre:", 
		track_amount AS "Track Amount:", runtime AS "Runtime:", CONCAT("$", FORMAT(average_discog, 2)) AS "Average Discog Price:", 
        CONCAT("$", FORMAT(highest_amazon, 2)) AS "Amazon Price:", IF(is_explicit, "Explicit", "Clean") "Explicit/Clean:"
    FROM vinyl
		JOIN singers
			USING(singer_id)
		JOIN producers
			USING(producer_id)
		JOIN prices
			USING(vinyl_id)
	WHERE average_discog IS NOT NULL AND highest_amazon IS NOT NULL AND average_discog < 35 AND highest_amazon < 35
    GROUP BY vinyl_id
    ORDER BY average_discog DESC