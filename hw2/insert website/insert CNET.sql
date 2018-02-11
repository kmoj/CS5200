INSERT INTO `hw2_zhang_teng_spring_2018`.`website`
(`id`,
`developer`,
`name`,
`description`,
`created`,
`updated`,
`visits`)
VALUES
(567,
23,
"CNET",
"an American media website that publishes reviews, news, articles, blogs, podcasts and videos on technology and consumer electronics",
curdate(),
curdate(),
5433455);

INSERT INTO `hw2_zhang_teng_spring_2018`.`website_role`
(
`developer`,
`website`,
`type`)
VALUES
(
23,
567,
"owner");

INSERT INTO `hw2_zhang_teng_spring_2018`.`website_role`
(
`developer`,
`website`,
`type`)
VALUES
(
34,
567,
"editor");

INSERT INTO `hw2_zhang_teng_spring_2018`.`website_role`
(
`developer`,
`website`,
`type`)
VALUES
(
12,
567,
"admin");
