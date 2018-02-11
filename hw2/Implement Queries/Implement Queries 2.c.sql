SELECT	website.id, website.name
FROM	page	JOIN	widget
ON		page.id = widget.page
JOIN website ON website.id = page.website
JOIN page_role ON page_role.page = page.id
JOIN person ON person.id = page_role.developer
WHERE widget.type = "YouTube"
and page_role.type = "reviewer"
and person.username = "bob"