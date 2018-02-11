SELECT	avg(page.views)
FROM
page	JOIN	website
ON		website.id = page.website
WHERE
website.name = "Wikipedia"