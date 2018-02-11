INSERT INTO `hw2_zhang_teng_spring_2018`.`person`
(`id`,
`firstName`,
`lastName`,
`username`,
`password`,
`email`,
`dob`)
VALUES
(12,
"Alice",
"Wonder",
"alice",
"alice",
"alice@wonder.com",
null);

INSERT INTO `hw2_zhang_teng_spring_2018`.`developer`
(`person`,
`developerKey`)
VALUES
(12,
"4321rewq");


INSERT INTO `hw2_zhang_teng_spring_2018`.`person`
(`id`,
`firstName`,
`lastName`,
`username`,
`password`,
`email`,
`dob`)
VALUES
(23,
"Bob",
"Marley",
"bob",
"bob",
"bob@marley.com",
null);

INSERT INTO `hw2_zhang_teng_spring_2018`.`developer`
(`person`,
`developerKey`)
VALUES
(23,
"5432trew");

INSERT INTO `hw2_zhang_teng_spring_2018`.`person`
(`id`,
`firstName`,
`lastName`,
`username`,
`password`,
`email`,
`dob`)
VALUES
(34,
"Charles",
"Garcia",
"charlie",
"charlie",
"chuch@garcia.com",
null);

INSERT INTO `hw2_zhang_teng_spring_2018`.`developer`
(`person`,
`developerKey`)
VALUES
(34,
"6543ytre");

INSERT INTO `hw2_zhang_teng_spring_2018`.`person`
(`id`,
`firstName`,
`lastName`,
`username`,
`password`,
`email`,
`dob`)
VALUES
(45,
"Dan",
"Martin",
"dan",
"dan",
"dan@martin.com",
null);

INSERT INTO `hw2_zhang_teng_spring_2018`.`user`
(`person`,
`userAgreement`,
`userKey`)
VALUES
(45,
true,
"7654fda");

INSERT INTO `hw2_zhang_teng_spring_2018`.`person`
(`id`,
`firstName`,
`lastName`,
`username`,
`password`,
`email`,
`dob`)
VALUES
(56,
"Ed",
"Karaz",
"ed",
"ed",
"ed@kar.com",
null);

INSERT INTO `hw2_zhang_teng_spring_2018`.`user`
(`person`,
`userAgreement`,
`userKey`)
VALUES
(56,
true,
"5678dfgh");
