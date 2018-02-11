SELECT	distinct page_reviewer.id
FROM	
(SELECT	person.id, page.views
	FROM	page	JOIN	page_role
	ON		page.id = page_role.page
    JOIN person ON person.id = page_role.developer
    WHERE page_role.type = "reviewer") AS page_reviewer
WHERE page_reviewer.views < 300000