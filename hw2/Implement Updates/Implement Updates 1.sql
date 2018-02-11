UPDATE `hw2_zhang_teng_spring_2018`.`phone`
SET
`phone` = "333-444-5555"
WHERE phone.primary = true 
AND person 
IN 
(SELECT person.id
 FROM person
 WHERE person.username = "charlie");
