--
-- Database Schema
--

CREATE DATABASE IF NOT EXISTS `Blood_Donations`;
USE `Blood_Donations`;


CREATE TABLE IF NOT EXISTS `Bloodtypes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE (`name`)
);

CREATE TABLE IF NOT EXISTS `Patients` (
  `id` int NOT NULL AUTO_INCREMENT ,
  `name` varchar(255) NOT NULL,
  `disease` varchar(255) NOT NULL,
  `bloodType_id` int NOT NULL,
  PRIMARY key (`id`),
  FOREIGN KEY (`bloodType_id`) REFERENCES `Bloodtypes` (`id`)
);

CREATE TABLE IF NOT EXISTS `Donors` (
  `id` int NOT NULL AUTO_INCREMENT ,
  `name` varchar(255) NOT NULL,
  `medicalReport` varchar(255) NOT NULL,
  `bloodType_id` int NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  PRIMARY key (`id`),
  FOREIGN KEY (`bloodType_id`) REFERENCES `Bloodtypes` (`id`)
);

CREATE TABLE IF NOT EXISTS `BloodBanks` (
  `id` int NOT NULL AUTO_INCREMENT ,
  `name` varchar(255) NOT NULL,
  `donor_id` int NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY key (`id`),
  FOREIGN KEY (`donor_id`) REFERENCES `Donors` (`id`)
);