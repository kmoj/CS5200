SELECT	widget.id
FROM
widget JOIN page
ON page.id = widget.page
JOIN website ON website.id = page.website
WHERE
widget.type = "YouTube" and website.name = "CNN"