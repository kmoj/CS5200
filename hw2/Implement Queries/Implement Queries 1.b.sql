SELECT	all_developer.id
FROM	
(SELECT	person.id, person.username
	FROM	person	JOIN	developer
	ON		person.id = developer.person) AS all_developer
WHERE all_developer.id = 34