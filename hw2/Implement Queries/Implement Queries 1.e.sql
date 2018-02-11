SELECT	page_role.developer
FROM	page	JOIN	widget
ON		page.id = widget.page
JOIN website ON website.id = page.website
JOIN page_role ON page_role.page = page.id
WHERE widget.type = "heading" 
and page.title = "Home" 
and website.name = "CNET"
and page_role.type = "writer"