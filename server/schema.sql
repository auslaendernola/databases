CREATE DATABASE IF NOT EXISTS chat;

USE chat;

CREATE TABLE messages (
  /* Describe your table here.*/
  id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
  message varchar(160)
);

/* Create other tables and define schemas for them here! */
CREATE TABLE users (
  id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
  userName varchar(20)
);

CREATE TABLE rooms (
  id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
  roomName varchar(20)
);

CREATE TABLE intersection (
  id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT
);

/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/
 -- ---
 -- Globals
 -- ---

 -- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
 -- SET FOREIGN_KEY_CHECKS=0;

 -- ---
 -- Table 'Messages'
 --
 -- ---

 -- DROP TABLE IF EXISTS `Messages`;
 --
 -- CREATE TABLE `Messages` (
 --   `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
 --   `roomName` CHAR(20) NULL DEFAULT NULL,
 --   PRIMARY KEY (`id`)
 -- );

 -- ---
 -- Table 'Users'
 --
 -- ---

 -- DROP TABLE IF EXISTS `Users`;
 --
 -- CREATE TABLE `Users` (
 --   `id` INTEGER NOT NULL AUTO_INCREMENT DEFAULT NULL,
 --   `username` CHAR(20) NULL DEFAULT NULL,
 --   PRIMARY KEY (`id`),
 --   UNIQUE KEY (`id`),
 --   PRIMARY KEY (`id`)
 -- );

 -- ---
 -- Table 'Rooms'
 --
 -- ---

 -- DROP TABLE IF EXISTS `Rooms`;
 --
 -- CREATE TABLE `Rooms` (
 --   `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
 --   `roomName` CHAR(20) NULL DEFAULT NULL,
 --   PRIMARY KEY (`id`)
 -- );

 -- ---
 -- Table 'Intersection'
 --
 -- ---

 -- DROP TABLE IF EXISTS `Intersection`;
 --
 -- CREATE TABLE `Intersection` (
 --   `messages.id` INTEGER NULL DEFAULT NULL,
 --   `users.id` INTEGER NULL DEFAULT NULL,
 --   `rooms.id` INTEGER NULL DEFAULT NULL,
 --   PRIMARY KEY ()
 -- );

 -- ---
 -- Foreign Keys
 -- ---

 -- ALTER TABLE `Intersection` ADD FOREIGN KEY (messages.id) REFERENCES `Messages` (`id`);
 -- ALTER TABLE `Intersection` ADD FOREIGN KEY (users.id) REFERENCES `Users` (`id`);
 -- ALTER TABLE `Intersection` ADD FOREIGN KEY (rooms.id) REFERENCES `Rooms` (`id`);

 -- ---
 -- Table Properties
 -- ---

 -- ALTER TABLE `Messages` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
 -- ALTER TABLE `Users` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
 -- ALTER TABLE `Rooms` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
 -- ALTER TABLE `Intersection` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

 -- ---
 -- Test Data
 -- ---

 -- INSERT INTO `Messages` (`id`,`roomName`) VALUES
 -- ('','');
 -- INSERT INTO `Users` (`id`,`username`) VALUES
 -- ('','');
 -- INSERT INTO `Rooms` (`id`,`roomName`) VALUES
 -- ('','');
 -- INSERT INTO `Intersection` (`messages.id`,`users.id`,`rooms.id`) VALUES
 -- ('','','');
