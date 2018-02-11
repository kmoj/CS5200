UPDATE `hw2_zhang_teng_spring_2018`.`widget`
SET
`order` = CASE
			WHEN widget.name = "head345" THEN 3
            WHEN NOT widget.name = "head345" 
                 and widget.order > 1 
                 and widget.order <= 3 
			THEN widget.order - 1
            ELSE widget.order
		  END
WHERE widget.page = 
(SELECT a.page
FROM
(SELECT widget.page 
 FROM widget 
 WHERE widget.name = "head345") AS a);
