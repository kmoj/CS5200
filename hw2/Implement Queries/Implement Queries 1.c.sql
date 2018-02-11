SELECT	twitter_developer.id
FROM	
(SELECT	person.id, website_role.type
	FROM	website	JOIN	website_role
	ON		website.id = website_role.website
    JOIN person ON person.id = website_role.developer
    WHERE website.name = "Twitter") AS twitter_developer
WHERE NOT twitter_developer.type = "owner"