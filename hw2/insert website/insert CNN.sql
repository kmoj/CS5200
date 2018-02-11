INSERT INTO `hw2_zhang_teng_spring_2018`.`website`
(`id`,
`developer`,
`name`,
`description`,
`created`,
`updated`,
`visits`)
VALUES
(456,
12,
"CNN",
"an American basic cable and satellite television news channel",
curdate(),
curdate(),
6543345);

INSERT INTO `hw2_zhang_teng_spring_2018`.`website_role`
(
`developer`,
`website`,
`type`)
VALUES
(
12,
456,
"owner");

INSERT INTO `hw2_zhang_teng_spring_2018`.`website_role`
(
`developer`,
`website`,
`type`)
VALUES
(
23,
456,
"editor");

INSERT INTO `hw2_zhang_teng_spring_2018`.`website_role`
(
`developer`,
`website`,
`type`)
VALUES
(
34,
456,
"admin");
