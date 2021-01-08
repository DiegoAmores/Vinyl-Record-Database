USE project;

CREATE OR REPLACE VIEW album_placement_with_above_average_rating AS
	SELECT album_name AS 'Album Name', 
		artist_name AS 'Artist',
		DATE_FORMAT(first_available, '%e-%b-%y') AS 'Released Date',
		ROUND(AVG((discogs_rating + amazon_rating + rollingstone_rating)/3),2) AS 'Average Rating', 
		billboard AS "Peak Billboard Position"
	FROM vinyl 
		JOIN ratings USING(vinyl_id)
		JOIN placement USING(vinyl_id)
		JOIN singers USING(singer_id)
	GROUP BY vinyl_id
	HAVING AVG((discogs_rating + amazon_rating + rollingstone_rating)/3) > 
		(SELECT ROUND(AVG((discogs_rating + amazon_rating + rollingstone_rating)/3),2)
		 FROM ratings)
	ORDER BY ROUND(AVG((discogs_rating + amazon_rating + rollingstone_rating)/3),2) DESC, billboard;


SELECT *
FROM album_placement_with_above_average_rating