SELECT	page.id
FROM
page	JOIN	page_role
ON		page.id = page_role.page
JOIN person ON person.id = page_role.developer
WHERE
person.username = "alice" and page_role.type = "editor"