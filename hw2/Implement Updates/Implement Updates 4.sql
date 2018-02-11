UPDATE
    page_role AS page_role1
    JOIN page_role AS page_role2 ON
           ( page_role1.id = (SELECT a.id 
							  FROM
							 (SELECT page_role.id 
							  FROM page_role 
                              WHERE page_role.developer = (SELECT person.id FROM person WHERE person.username = "charlie")
							  AND page_role.page = (SELECT page.id  
													FROM page JOIN website  ON website.id = page.website  
													WHERE page.title = "Home" AND website.name ="CNET")
							  ) AS a)
			AND page_role2.id = (SELECT b.id 
								FROM
								(SELECT page_role.id 
								FROM page_role 
								WHERE page_role.developer = (SELECT person.id FROM person WHERE person.username = "bob")
								AND page_role.page = (SELECT page.id  
													  FROM page JOIN website  ON website.id = page.website  
													  WHERE page.title = "Home" AND website.name ="CNET"))
								AS b))
        OR ( page_role1.id = (SELECT c.id 
							  FROM
							  (SELECT page_role.id 
							   FROM page_role 
							   WHERE page_role.developer = (SELECT person.id FROM person WHERE person.username = "bob")
							   AND page_role.page = (SELECT page.id  
													  FROM page JOIN website  ON website.id = page.website  
													  WHERE page.title = "Home" AND website.name ="CNET"))
							   AS c)
             AND 
             page_role2.id = (SELECT d.id 
							  FROM
                              (SELECT page_role.id 
							  FROM page_role 
                              WHERE page_role.developer = (SELECT person.id FROM person WHERE person.username = "charlie")
							  AND page_role.page = (SELECT page.id  
													FROM page JOIN website  ON website.id = page.website  
													WHERE page.title = "Home" AND website.name ="CNET"))
							  AS d))
SET
    page_role1.type = page_role2.type,
    page_role2.type = page_role1.type
;