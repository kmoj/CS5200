INSERT INTO `hw2_zhang_teng_spring_2018`.`page`
(`id`,
`website`,
`title`,
`description`,
`created`,
`updated`,
`views`)
VALUES
(456,
456,
"Preferences",
"Where users can configure their preferences",
curdate(),
curdate(),
456776);

INSERT INTO `hw2_zhang_teng_spring_2018`.`page_role`
(
`developer`,
`page`,
`type`)
VALUES
(
12,
456,
"editor");

INSERT INTO `hw2_zhang_teng_spring_2018`.`page_role`
(
`developer`,
`page`,
`type`)
VALUES
(
23,
456,
"reviewer");

INSERT INTO `hw2_zhang_teng_spring_2018`.`page_role`
(
`developer`,
`page`,
`type`)
VALUES
(
34,
456,
"writer");
