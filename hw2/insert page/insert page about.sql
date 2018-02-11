INSERT INTO `hw2_zhang_teng_spring_2018`.`page`
(`id`,
`website`,
`title`,
`description`,
`created`,
`updated`,
`views`)
VALUES
(234,
678,
"About",
"Website description",
curdate(),
curdate(),
234545);

INSERT INTO `hw2_zhang_teng_spring_2018`.`page_role`
(
`developer`,
`page`,
`type`)
VALUES
(
23,
234,
"editor");

INSERT INTO `hw2_zhang_teng_spring_2018`.`page_role`
(
`developer`,
`page`,
`type`)
VALUES
(
34,
234,
"reviewer");

INSERT INTO `hw2_zhang_teng_spring_2018`.`page_role`
(
`developer`,
`page`,
`type`)
VALUES
(
12,
234,
"writer");
