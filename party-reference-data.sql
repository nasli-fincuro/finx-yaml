CREATE DATABASE 'prd_directory_db';
USE `prd_directory_db`;
CREATE TABLE identification_type (
	identification_type_id serial NOT NULL,
	type_code varchar(50) NOT NULL,
	type_name varchar(100) NOT NULL,
	description text NULL,
	country_scope varchar(3) NULL,
	is_active bool NULL DEFAULT true,
	validation_regex varchar(200) NULL,
	created_at timestamptz NULL DEFAULT CURRENT_TIMESTAMP,
	CONSTRAINT identification_type_pkey PRIMARY KEY (identification_type_id),
	CONSTRAINT identification_type_type_code_key UNIQUE (type_code)
);
