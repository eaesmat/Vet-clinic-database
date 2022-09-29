/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (id INT PRIMARY KEY NOT NULL,name TEXT NOT NULL, date_of_birth DATE NOT NULL, escapet_attempts INT NOT NULL, neutured BOOLEAN NOT NULL,weight_kg DECIMAL NOT NULL);
ALTER TABLE animals ADD COLUMN species TEXT;
CREATE TABLE owners (id SERIAL PRIMARY KEY, full_name TEXT, age INT);
CREATE TABLE species (id SERIAL PRIMARY KEY, name TEXT);
CREATE SEQUENCE aniamls_id_seq START WITH 11;
ALTER TABLE animals ALTER COLUMN id SET DEFAULT nextval('aniamls_id_seq');
ALTER TABLE animals DROP species_id;
ALTER TABLE animals ADD COLUMN species_id INT;
ALTER TABLE animals ADD CONSTRAINT fk_species FOREIGN KEY (species_id) REFERENCES species (id);
ALTER TABLE animals ADD COLUMN owner_id INT;
ALTER TABLE animals ADD CONSTRAINT fk_onwers FOREIGN KEY (owner_id) REFERENCES owners (id);

CREATE TABLE vets (
	id INT GENERATED ALWAYS AS IDENTITY,
	name VARCHAR,
	age INT,
	date_of_graduation date,
	PRIMARY KEY (id)
);
CREATE TABLE specializations (
	vet_id INT,
	species_id INT,
	PRIMARY KEY (vet_id, species_id),
	FOREIGN KEY (vet_id) REFERENCES vets (id),
	FOREIGN KEY (species_id) REFERENCES species (id)
);

CREATE TABLE visits (
    vet_id BIGINT REFERENCES vets (id),
    animal_id BIGINT REFERENCES animals (id),
    visit_date DATE NOT NULL
);