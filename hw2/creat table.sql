CREATE TABLE `hw2_zhang_teng_spring_2018`.`person` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `firstName` VARCHAR(45) NULL,
  `lastName` VARCHAR(45) NULL,
  `username` VARCHAR(45) NULL,
  `password` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `dob` DATE NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `hw2_zhang_teng_spring_2018`.`developer` (
  `person` INT NOT NULL,
  `developerKey` VARCHAR(45) NULL,
  PRIMARY KEY (`person`),
  CONSTRAINT `developer_person_generalization`
    FOREIGN KEY (`person`)
    REFERENCES `hw2_zhang_teng_spring_2018`.`person` (`id`)
    ON DELETE CASCADE
ON UPDATE CASCADE);

CREATE TABLE `hw2_zhang_teng_spring_2018`.`user` (
  `person` INT NOT NULL,
  `userAgreement` INT NULL,
  `userKey` VARCHAR(45) NULL,
  PRIMARY KEY (`person`),
  CONSTRAINT `user_person_generalization`
    FOREIGN KEY (`person`)
    REFERENCES `hw2_zhang_teng_spring_2018`.`person` (`id`)
    ON DELETE CASCADE
ON UPDATE CASCADE);

CREATE TABLE `hw2_zhang_teng_spring_2018`.`website` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `developer` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `description` VARCHAR(200) NULL,
  `created` DATE NOT NULL,
  `updated` DATE NULL,
  `visits` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `developer_website_idx` (`developer` ASC),
  CONSTRAINT `developer_website`
    FOREIGN KEY (`developer`)
    REFERENCES `hw2_zhang_teng_spring_2018`.`developer` (`person`)
    ON DELETE NO ACTION
ON UPDATE CASCADE);

CREATE TABLE `hw2_zhang_teng_spring_2018`.`page` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `website` INT NOT NULL,
  `title` VARCHAR(45) NULL,
  `description` VARCHAR(200) NULL,
  `created` DATE NOT NULL,
  `updated` DATE NULL,
  `views` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `page_website_idx` (`website` ASC),
  CONSTRAINT `page_website`
    FOREIGN KEY (`website`)
    REFERENCES `hw2_zhang_teng_spring_2018`.`website` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);

CREATE TABLE `hw2_zhang_teng_spring_2018`.`WidgetType` (
  `type` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`type`));
INSERT INTO `hw2_zhang_teng_spring_2018`.`WidgetType`
(`type`)
VALUES
("YouTube");

INSERT INTO `hw2_zhang_teng_spring_2018`.`WidgetType`
(`type`)
VALUES
("Image");

INSERT INTO `hw2_zhang_teng_spring_2018`.`WidgetType`
(`type`)
VALUES
("Heading");

INSERT INTO `hw2_zhang_teng_spring_2018`.`WidgetType`
(`type`)
VALUES
("Html");

CREATE TABLE `hw2_zhang_teng_spring_2018`.`widget` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `page` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `width` INT NULL,
  `height` INT NULL,
  `cssClass` VARCHAR(45) NULL,
  `cssStyle` VARCHAR(45) NULL,
  `text` VARCHAR(45) NULL,
  `order` INT NULL,
  `type` VARCHAR(45) NULL,
  `url` VARCHAR(45) NULL,
  `shareble` BOOLEAN NULL,
  `expandable` BOOLEAN NULL,
  `src` VARCHAR(45) NULL,
  `size` INT NULL,
  `html` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  INDEX `widget_page_idx` (`page` ASC),
  INDEX `widget_type_idx` (`type` ASC),
  CONSTRAINT `widget_page`
    FOREIGN KEY (`page`)
    REFERENCES `hw2_zhang_teng_spring_2018`.`page` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `widget_type`
    FOREIGN KEY (`type`)
    REFERENCES `hw2_zhang_teng_spring_2018`.`WidgetType` (`type`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `hw2_zhang_teng_spring_2018`.`phone` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `person` INT NOT NULL,
  `phone` VARCHAR(45) NULL,
  `primary` BOOLEAN NULL,
  PRIMARY KEY (`id`),
  INDEX `phone_person_idx` (`person` ASC),
  CONSTRAINT `phone_person`
    FOREIGN KEY (`person`)
    REFERENCES `hw2_zhang_teng_spring_2018`.`person` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);

CREATE TABLE `hw2_zhang_teng_spring_2018`.`address` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `person` INT NOT NULL,
  `street1` VARCHAR(45) NULL,
  `street2` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `state` VARCHAR(45) NULL,
  `zip` VARCHAR(45) NULL,
  `primary` BOOLEAN NULL,
  PRIMARY KEY (`id`),
  INDEX `address_idx` (`person` ASC),
  CONSTRAINT `address`
    FOREIGN KEY (`person`)
    REFERENCES `hw2_zhang_teng_spring_2018`.`person` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);

CREATE TABLE `hw2_zhang_teng_spring_2018`.`priviledge` (
  `type` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`type`));


INSERT INTO `hw2_zhang_teng_spring_2018`.`priviledge`
(`type`)
VALUES
("create");

INSERT INTO `hw2_zhang_teng_spring_2018`.`priviledge`
(`type`)
VALUES
("read");

INSERT INTO `hw2_zhang_teng_spring_2018`.`priviledge`
(`type`)
VALUES
("update");

INSERT INTO `hw2_zhang_teng_spring_2018`.`priviledge`
(`type`)
VALUES
("delete");

CREATE TABLE `hw2_zhang_teng_spring_2018`.`website_priviledge` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `developer` INT NOT NULL,
  `website` INT NOT NULL,
  `priviledge` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  INDEX `priviledge_developer_idx` (`developer` ASC),
  INDEX `priviledge_website_idx` (`website` ASC),
  INDEX `priviledge_type_idx` (`priviledge` ASC),
  CONSTRAINT `priviledge_developer`
    FOREIGN KEY (`developer`)
    REFERENCES `hw2_zhang_teng_spring_2018`.`developer` (`person`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `priviledge_website`
    FOREIGN KEY (`website`)
    REFERENCES `hw2_zhang_teng_spring_2018`.`website` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `priviledge_type`
    FOREIGN KEY (`priviledge`)
    REFERENCES `hw2_zhang_teng_spring_2018`.`priviledge` (`type`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);

CREATE TABLE `hw2_zhang_teng_spring_2018`.`page_priviledge` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `developer` INT NOT NULL,
  `page` INT NOT NULL,
  `type` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `priviledge_developer_idx` (`developer` ASC),
  INDEX `priviledge_page_idx` (`page` ASC),
  INDEX `type_idx` (`type` ASC),
  CONSTRAINT `page_priviledge_developer`
    FOREIGN KEY (`developer`)
    REFERENCES `hw2_zhang_teng_spring_2018`.`developer` (`person`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `page_priviledge_page`
    FOREIGN KEY (`page`)
    REFERENCES `hw2_zhang_teng_spring_2018`.`page` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `page_priviledge_type`
    FOREIGN KEY (`type`)
    REFERENCES `hw2_zhang_teng_spring_2018`.`priviledge` (`type`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);
CREATE TABLE `hw2_zhang_teng_spring_2018`.`role` (
  `type` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`type`));

INSERT INTO `hw2_zhang_teng_spring_2018`.`role`
(`type`)
VALUES
("owner");

INSERT INTO `hw2_zhang_teng_spring_2018`.`role`
(`type`)
VALUES
("admin");

INSERT INTO `hw2_zhang_teng_spring_2018`.`role`
(`type`)
VALUES
("writer");

INSERT INTO `hw2_zhang_teng_spring_2018`.`role`
(`type`)
VALUES
("editor");

INSERT INTO `hw2_zhang_teng_spring_2018`.`role`
(`type`)
VALUES
("reviewer");

CREATE TABLE `hw2_zhang_teng_spring_2018`.`website_role` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `developer` INT NOT NULL,
  `website` INT NOT NULL,
  `type` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `website_role_developer_idx` (`developer` ASC),
  INDEX `website_role_website_idx` (`website` ASC),
  INDEX `website_role_type_idx` (`type` ASC),
  CONSTRAINT `website_role_developer`
    FOREIGN KEY (`developer`)
    REFERENCES `hw2_zhang_teng_spring_2018`.`developer` (`person`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `website_role_website`
    FOREIGN KEY (`website`)
    REFERENCES `hw2_zhang_teng_spring_2018`.`website` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `website_role_type`
    FOREIGN KEY (`type`)
    REFERENCES `hw2_zhang_teng_spring_2018`.`role` (`type`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);

CREATE TABLE `hw2_zhang_teng_spring_2018`.`page_role` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `developer` INT NOT NULL,
  `page` INT NOT NULL,
  `type` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `page_role_developer_idx` (`developer` ASC),
  INDEX `page_role_page_idx` (`page` ASC),
  INDEX `page_role_type_idx` (`type` ASC),
  CONSTRAINT `page_role_developer`
    FOREIGN KEY (`developer`)
    REFERENCES `hw2_zhang_teng_spring_2018`.`developer` (`person`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `page_role_page`
    FOREIGN KEY (`page`)
    REFERENCES `hw2_zhang_teng_spring_2018`.`page` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `page_role_type`
    FOREIGN KEY (`type`)
    REFERENCES `hw2_zhang_teng_spring_2018`.`role` (`type`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);
