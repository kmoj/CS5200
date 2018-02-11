SELECT	website.id, website.name
FROM	website	JOIN website_role
ON		website.id = website_role.website
JOIN person ON person.id = website_role.developer
WHERE person.username = "alice" and website_role.type = "owner"