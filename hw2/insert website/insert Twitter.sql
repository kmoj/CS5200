INSERT INTO `hw2_zhang_teng_spring_2018`.`website`
(`id`,
`developer`,
`name`,
`description`,
`created`,
`updated`,
`visits`)
VALUES
(234,
23,
" Twitter ",
" an online social media and social networking service ",
curdate(),
curdate(),
4321543);

INSERT INTO `hw2_zhang_teng_spring_2018`.`website_role`
(
`developer`,
`website`,
`type`)
VALUES
(
23,
234,
"owner");

INSERT INTO `hw2_zhang_teng_spring_2018`.`website_role`
(
`developer`,
`website`,
`type`)
VALUES
(
34,
234,
"editor");

INSERT INTO `hw2_zhang_teng_spring_2018`.`website_role`
(
`developer`,
`website`,
`type`)
VALUES
(
12,
234,
"admin");
