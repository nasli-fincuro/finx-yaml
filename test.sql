CREATE DATABASE 'prd_directory_db';
USE `prd_directory_db`;


DROP TABLE IF EXISTS `party_reference_data_directory_entry`;
CREATE TABLE `party_reference_data_directory_entry` (
    `party_reference_data_directory_id` serial PRIMARY KEY ,
    `party_reference` int NOT NULL ,
    `directory_entry_date_type` varchar(50) NOT NULL,  -- ENUM
    `directory_entry_date` TIMESTAMPTZ NOT NULL,
    `party_type` varchar(50) NOT NULL,  -- ENUM
    `created_at` TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
    `status` varchar(50) DEFAULT 'ACTIVE'  -- ENUM
);

