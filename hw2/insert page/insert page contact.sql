INSERT INTO `hw2_zhang_teng_spring_2018`.`page`
(`id`,
`website`,
`title`,
`description`,
`created`,
`updated`,
`views`)
VALUES
(345,
345,
"Contact",
"Addresses, phones, and contact info",
curdate(),
curdate(),
345656);

INSERT INTO `hw2_zhang_teng_spring_2018`.`page_role`
(
`developer`,
`page`,
`type`)
VALUES
(
34,
345,
"editor");

INSERT INTO `hw2_zhang_teng_spring_2018`.`page_role`
(
`developer`,
`page`,
`type`)
VALUES
(
12,
345,
"reviewer");

INSERT INTO `hw2_zhang_teng_spring_2018`.`page_role`
(
`developer`,
`page`,
`type`)
VALUES
(
23,
345,
"writer");
