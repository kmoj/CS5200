SELECT	page.id
FROM
page
WHERE
page.views = (SELECT max(page.views)  FROM	page) 