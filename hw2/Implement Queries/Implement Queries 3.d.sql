SELECT	sum(page.views)
FROM
page	JOIN	website
ON		website.id = page.website
WHERE
website.name = "CNET"