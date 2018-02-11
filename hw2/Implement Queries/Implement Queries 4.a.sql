SELECT	widget.id
FROM
widget
WHERE
widget.page = 
(SELECT page.id
 FROM website JOIN page
 ON website.id = page.website
 WHERE website.name = "CNET" and page.title = "Home")