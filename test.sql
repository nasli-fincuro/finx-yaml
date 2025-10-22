CREATE DATABASE 'prd_directory_db';
USE `prd_directory_db`;

CREATE TYPE `directory_date_type_enum` AS ENUM (
    'OPEN_DATE',
    'REFRESH_DATE'
);



DROP TABLE IF EXISTS `party_reference_data_directory_entry`;
CREATE TABLE `party_reference_data_directory_entry` (
    `party_reference_data_directory_id` UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    `party_reference` UUID NOT NULL REFERENCES party(party_id),
    `directory_entry_date_type` directory_date_type_enum NOT NULL,  -- ENUM
    `directory_entry_date` TIMESTAMPTZ NOT NULL,
    `party_type` party_type_enum NOT NULL,  -- ENUM
    `created_at` TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
    `status` directory_status_enum DEFAULT 'ACTIVE'  -- ENUM
);

