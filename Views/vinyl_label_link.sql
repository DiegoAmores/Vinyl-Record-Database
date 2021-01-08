USE project;

CREATE OR REPLACE VIEW vinyl_label_link AS
	SELECT vinyl_id AS "Vinyl ID", album_name AS "Album Name", label_name AS "Label Name"
	FROM vinyllabel AS vl
		JOIN vinyl v 
			USING(vinyl_id)
		JOIN labels l 
			USING(label_id)
	ORDER BY vinyl_id;


SELECT *
FROM vinyl_label_link
