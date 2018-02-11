UPDATE `hw2_zhang_teng_spring_2018`.`widget`
SET
`order` = CASE
			WHEN widget.name = "head345" THEN 3
            WHEN NOT widget.name = "head345" 
                 and widget.order > 1 THEN widget.order - 1
		  END
WHERE widget.page = 345;
