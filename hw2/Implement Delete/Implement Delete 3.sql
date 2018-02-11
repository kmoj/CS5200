DELETE FROM `hw2_zhang_teng_spring_2018`.`page`
WHERE 
page.website = (SELECT website.id
				FROM website
				WHERE website.name = "Wikipedia")
AND
page.updated = (SELECT DISTINCT a.updated
				FROM 
			   (SELECT page.updated
				FROM page
                WHERE page.updated = 
			   (SELECT max(page.updated)
				FROM page
                WHERE page.website = (SELECT website.id
									  FROM website
									  WHERE website.name = "Wikipedia")
				))
                AS a)
;
