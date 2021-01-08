USE project;

CREATE OR REPLACE VIEW label_count AS
	SELECT label_name AS "Label Name", label_city AS "Label City",
		label_country AS "Label Country", COUNT(label_id) AS "Amount of Labels in Database"
	FROM vinyllabel vl
		JOIN labels l
			USING(label_id)
		JOIN vinyl v
			ON vl.vinyl_id = v.vinyl_id
	GROUP BY label_id
    ORDER BY COUNT(label_id) DESC, label_name;
    
SELECT * 
FROM label_count