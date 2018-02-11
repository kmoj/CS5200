INSERT INTO `hw2_zhang_teng_spring_2018`.`website`
(`id`,
`developer`,
`name`,
`description`,
`created`,
`updated`,
`visits`)
VALUES
(345,
34,
"Wikipedia",
"a free online encyclopedia",
curdate(),
curdate(),
3456654);

INSERT INTO `hw2_zhang_teng_spring_2018`.`website_role`
(
`developer`,
`website`,
`type`)
VALUES
(
34,
345,
"owner");

INSERT INTO `hw2_zhang_teng_spring_2018`.`website_role`
(
`developer`,
`website`,
`type`)
VALUES
(
12,
345,
"editor");

INSERT INTO `hw2_zhang_teng_spring_2018`.`website_role`
(
`developer`,
`website`,
`type`)
VALUES
(
23,
345,
"admin");
