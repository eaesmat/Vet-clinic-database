/* Populate database with sample data. */

INSERT INTO animals(id,name,date_of_birth,escapet_attempts,neutured,weight_kg) values(1,'Agumon', '2020-feb-3',0,true,10.23);
INSERT INTO animals(id,name,date_of_birth,escapet_attempts,neutured,weight_kg) values(2,'Gabumon', '2020-nov-15',2,true,8);
INSERT INTO animals(id,name,date_of_birth,escapet_attempts,neutured,weight_kg) values(3,'Pikachu', '2021-jan-7',1,false,15.04);
INSERT INTO animals(id,name,date_of_birth,escapet_attempts,neutured,weight_kg) values(4,'Devimon', '2017-may-12',5,true,11);
INSERT INTO animals (id, name, date_of_birth, escapet_attempts, neutured, weight_kg) VALUES (5, 'Charmander', '2020-FEB-8', 0, FALSE, 11);
INSERT INTO animals (id, name, date_of_birth, escapet_attempts, neutured, weight_kg) VALUES (6, 'Plantmon', '2021-nov-15', 2, true, 5.7);
INSERT INTO animals (id, name, date_of_birth, escapet_attempts, neutured, weight_kg) VALUES (7, 'Squirtle', '1993-april-2', 3, false, 12.13);
INSERT INTO animals (id, name, date_of_birth, escapet_attempts, neutured, weight_kg) VALUES (8, ' Angemon', '2005-jun-12', 1, true, 45);
INSERT INTO animals (id, name, date_of_birth, escapet_attempts, neutured, weight_kg) VALUES (9, 'Boarmon', '2005-jun-7', 7, true, 20);
INSERT INTO animals (id, name, date_of_birth, escapet_attempts, neutured, weight_kg) VALUES (10, 'Blossom', '1998-oct-13', 3, true, 17);
INSERT INTO animals (id, name, date_of_birth, escapet_attempts, neutured, weight_kg) VALUES (11, 'Ditto', '2022-may-14', 4, true, 22);
INSERT INTO owners (full_name, age) VALUES('Sam Smith', 34);
INSERT INTO owners (full_name, age) VALUES('Jennifer Orwell', 19);
INSERT INTO owners (full_name, age) VALUES('Bob', 45);
INSERT INTO owners (full_name, age) VALUES('Melody Pond ', 77);
INSERT INTO owners (full_name, age) VALUES('Dean Winchester', 14);
INSERT INTO owners (full_name, age) VALUES('Jodie Whittaker', 38);
NSERT INTO species(name) VALUES('Pokemon');
INSERT INTO species(name) VALUES('Digimon');

INSERT INTO vets (name , age , date_of_graduation)
VALUES  ('William Tatcher', 45, '2000-04-23'),
		('Maisy Smith', 26, '2019-01-17'),
		('Stephanie Mendez', 64, '1981-05-04'),
		('Jack Harkness', 38, '2008-06-08');

-- Insert the following data for specialties
INSERT INTO specializations (vet_id,species_id)
VALUES (1,1), (3,1), (3,2), (4,2);

INSERT INTO visits(animal_id, vets_id, visit_date)
VALUES('1', '1', date '2020-05-24'),
('1', '3', date '2020-07-22'),
('2', '4', date '2021-02-02'),
('3', '2', date '2020-01-05'),
('3', '2', date '2020-03-08'),
('3', '2', date '2020-05-14'),
('4', '3', date '2021-05-04'),
('5', '4', date '2021-02-24'),
('6', '2', date '2019-12-21'),
('6', '1', date '2020-08-10'),
('6', '2', date '2021-04-07'),
('7', '3', date '2019-09-29'),
('8', '4', date '2020-10-03'),
('8', '4', date '2020-11-04'),
('9', '2', date '2019-01-24'),
('9', '2', date '2019-05-15'),
('9', '2', date '2020-02-27'),
('9', '2', date '2020-08-03'),
('10', '3', date '2020-05-24'),
('10', '1', date '2021-01-11');
