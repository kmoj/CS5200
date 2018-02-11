DELETE FROM `hw2_zhang_teng_spring_2018`.`address`
WHERE 
address.primary = true
AND
address.person = (SELECT person.id 
				  FROM person
                  WHERE person.username = "alice")
;
