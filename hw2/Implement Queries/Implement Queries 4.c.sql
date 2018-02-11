SELECT	widget.id
FROM
widget JOIN page
ON page.id = widget.page
JOIN page_role ON page.id = page_role.page
JOIN person ON person.id = page_role.developer
WHERE
page_role.type = "reviewer" and person.username = "alice"