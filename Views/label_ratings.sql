USE project;

CREATE OR REPLACE VIEW label_ratings AS
	SELECT label_name AS "Label Name", FORMAT(AVG(discogs_rating),2) AS "Average Discogs Rating",
		FORMAT(AVG(amazon_rating),2) AS "Average Amazon Rating", 
        FORMAT(AVG(rollingstone_rating), 2) AS "Average Rolling Stone Rating",
        FORMAT((AVG(discogs_rating)+AVG(amazon_rating)+AVG(rollingstone_rating))/3, 2) AS "Aggregate Rating"
	FROM vinyllabel vl
		JOIN labels l
			USING(label_id)
		JOIN vinyl v
			ON vl.vinyl_id = v.vinyl_id
		JOIN ratings r
			ON r.vinyl_id = v.vinyl_id
	WHERE rollingstone_rating IS NOT NULL AND amazon_rating IS NOT NULL AND 
		discogs_rating IS NOT NULL
	GROUP BY label_id
    ORDER BY  ((AVG(discogs_rating)+AVG(amazon_rating)+AVG(rollingstone_rating))/3) DESC, label_name;
    
SELECT  * 
FROM label_ratings