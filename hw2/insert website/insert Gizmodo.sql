INSERT INTO `hw2_zhang_teng_spring_2018`.`website`
(`id`,
`developer`,
`name`,
`description`,
`created`,
`updated`,
`visits`)
VALUES
(678,
34,
"Gizmodo",
"a design, technology, science and science fiction website that also writes articles on politics",
curdate(),
curdate(),
4322345);

INSERT INTO `hw2_zhang_teng_spring_2018`.`website_role`
(
`developer`,
`website`,
`type`)
VALUES
(
34,
678,
"owner");

INSERT INTO `hw2_zhang_teng_spring_2018`.`website_role`
(
`developer`,
`website`,
`type`)
VALUES
(
12,
678,
"editor");

INSERT INTO `hw2_zhang_teng_spring_2018`.`website_role`
(
`developer`,
`website`,
`type`)
VALUES
(
23,
678,
"admin");
