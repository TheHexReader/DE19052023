CREATE SCHEMA IF NOT EXISTS `testde` DEFAULT CHARACTER SET utf8 ;
USE `testde` ;

CREATE TABLE IF NOT EXISTS `testde`.`oreders` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `oreder_number` VARCHAR(255) NOT NULL,
  `date_of_cteation` VARCHAR(10) NOT NULL,
  `client_code` VARCHAR(255) NOT NULL,
  `services` VARCHAR(255) NOT NULL,
  `status` ENUM('Новая', 'На исследовании', 'Закрыта') NOT NULL,
  `close_date` VARCHAR(10) NULL,
  `staff_code` VARCHAR(255) NOT NULL,
  `time_to_complete` INT NOT NULL,
  PRIMARY KEY (`id`))
;

CREATE TABLE IF NOT EXISTS `testde`.`fiz_client` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `full_name` VARCHAR(255) NOT NULL,
  `client_code` VARCHAR(255) NOT NULL,
  `passport_serial` VARCHAR(4) NOT NULL,
  `passport_number` VARCHAR(6) NOT NULL,
  `date_of_birth` VARCHAR(10) NOT NULL,
  `address` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `password_sha256` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
;

CREATE TABLE IF NOT EXISTS `testde`.`ur_client` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `company_name` VARCHAR(255) NOT NULL,
  `address` VARCHAR(255) NOT NULL,
  `инн` VARCHAR(10) NOT NULL,
  `р/с` VARCHAR(11) NOT NULL,
  `бик` VARCHAR(9) NOT NULL,
  `boss_full_name` VARCHAR(255) NOT NULL,
  `contact_full_name` VARCHAR(255) NOT NULL,
  `contact_tel_number` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `password_sha256` VARCHAR(255) NOT NULL,
  `client_code` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
;

CREATE TABLE IF NOT EXISTS `testde`.`staff` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `staff_code` VARCHAR(255) NOT NULL,
  `job_title` VARCHAR(255) NOT NULL,
  `full_name` VARCHAR(255) NOT NULL,
  `login` VARCHAR(255) NOT NULL,
  `password_sha256` VARCHAR(255) NOT NULL,
  `services` VARCHAR(255) NULL,
  `last_log_in_date` VARCHAR(19) NOT NULL,
  PRIMARY KEY (`id`))
;

CREATE TABLE IF NOT EXISTS `testde`.`services` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `service_id` INT NOT NULL,
  `service_name` VARCHAR(255) NOT NULL,
  `service_code` VARCHAR(255) NOT NULL,
  `time_to_execute` INT NOT NULL,
  `deviation` VARCHAR(255) NOT NULL,
  `services` VARCHAR(255) NOT NULL,
  `cost` FLOAT NOT NULL,
  `cost_russian_cosmetic` FLOAT NOT NULL,
  PRIMARY KEY (`id`))
;