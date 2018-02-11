UPDATE `hw2_zhang_teng_spring_2018`.`page`
SET
`title` = concat("CNET - ", page.title)
WHERE page.website = 
(SELECT website.id
 FROM website
 WHERE website.name = "CNET");