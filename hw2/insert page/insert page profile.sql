INSERT INTO `hw2_zhang_teng_spring_2018`.`page`
(`id`,
`website`,
`title`,
`description`,
`created`,
`updated`,
`views`)
VALUES
(567,
567,
"Profile",
"Users can configure their personal information",
curdate(),
curdate(),
567878);

INSERT INTO `hw2_zhang_teng_spring_2018`.`page_role`
(
`developer`,
`page`,
`type`)
VALUES
(
23,
567,
"editor");

INSERT INTO `hw2_zhang_teng_spring_2018`.`page_role`
(
`developer`,
`page`,
`type`)
VALUES
(
34,
567,
"reviewer");

INSERT INTO `hw2_zhang_teng_spring_2018`.`page_role`
(
`developer`,
`page`,
`type`)
VALUES
(
12,
567,
"writer");
