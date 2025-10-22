CREATE DATABASE 'prd_directory_db';
USE `prd_directory_db`;
CREATE TABLE identification_type (
	identification_type_id serial4 NOT NULL,
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
CREATE TABLE association_obligation_entitlement (
	obligation_id uuid NOT NULL DEFAULT gen_random_uuid(),
	association_id uuid NOT NULL,
	obligation_subject text NULL,
	obligation_type public.obligation_type_enum NOT NULL,
	obligation_modality public.obligation_modality_enum NOT NULL,
	obligation_definition text NULL,
	created_at timestamptz NULL DEFAULT CURRENT_TIMESTAMP,
	CONSTRAINT association_obligation_entitlement_pkey PRIMARY KEY (obligation_id),
	CONSTRAINT association_obligation_entitlement_association_id_fkey FOREIGN KEY (association_id) REFERENCES party_association(association_id)
);
