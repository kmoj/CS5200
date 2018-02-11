SELECT	count(widget.id)
FROM
widget
WHERE
widget.page = 
(SELECT page.id
 FROM page JOIN website
 ON website.id = page.website
 WHERE website.name = "Wikipedia")