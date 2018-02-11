DELETE FROM `hw2_zhang_teng_spring_2018`.`widget`
WHERE 
widget.page = (SELECT page.id
			   FROM page
			   WHERE page.title = "Contact")
AND
widget.order = (SELECT a.order
				FROM 
			   (SELECT widget.order
				FROM widget
                WHERE widget.order = 
			   (SELECT max(widget.order)
				FROM widget
                WHERE widget.page = (SELECT page.id
									 FROM page
									 WHERE page.title = "Contact")
				))
                AS a)
;