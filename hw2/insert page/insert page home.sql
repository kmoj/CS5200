INSERT INTO `hw2_zhang_teng_spring_2018`.`page`
(`id`,
`website`,
`title`,
`description`,
`created`,
`updated`,
`views`)
VALUES
(123,
567,
"Home",
"Landing page",
curdate(),
curdate(),
123434);

INSERT INTO `hw2_zhang_teng_spring_2018`.`page_role`
(
`developer`,
`page`,
`type`)
VALUES
(
12,
123,
"editor");

INSERT INTO `hw2_zhang_teng_spring_2018`.`page_role`
(
`developer`,
`page`,
`type`)
VALUES
(
23,
123,
"reviewer");

INSERT INTO `hw2_zhang_teng_spring_2018`.`page_role`
(
`developer`,
`page`,
`type`)
VALUES
(
34,
123,
"writer");
