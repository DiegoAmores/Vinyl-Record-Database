USE project;
CREATE OR REPLACE VIEW tracksbygenre AS
	SELECT genre AS "Genre", FLOOR(AVG(track_amount)) AS "Average Number of Songs"
    FROM vinyl
    GROUP BY genre
    ORDER BY genre;
    
SELECT * 
FROM tracksbygenre;