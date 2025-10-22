CREATE DATABASE 'prd_directory_db';
USE `prd_directory_db`;


DROP TABLE IF EXISTS `identification_type`;
CREATE TABLE `identification_type` (
    `identification_type_id` int PRIMARY KEY auto_increment,
    `type_code` VARCHAR(50) UNIQUE NOT NULL,
    `type_name` VARCHAR(100) NOT NULL,
    `description` TEXT,
    `country_scope` VARCHAR(3),          -- NULL for global, or specific country code
    `is_active` BOOLEAN DEFAULT true,
    `validation_regex` VARCHAR(200),     -- Optional: regex pattern for validation
    `created_at` TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP
);

