/*Queries that provide answers to the questions from all projects.*/
SELECT * FROM animals WHERE name LIKE '%mon';
SELECT name FROM animals WHERE date_of_birth  BETWEEN '2016-01-01' AND '2019-12-31'; 
SELECT name FROM animals WHERE neutured = true AND escapet_attempts < 3;
SELECT date_of_birth FROM animals WHERE name = 'Agumon' OR NAME = 'Pikachu';
SELECT name,escapet_attempts FROM animals WHERE weight_kg > 10.5;
SELECT * FROM animals WHERE neutured = true;
SELECT * FROM animals WHERE name!= 'Gabumon';
SELECT * FROM animals WHERE weight_kg >= 10.4 AND weight_kg <= 17.3;
BEGIN;
UPDATE animals SET species = 'unspecified';
ROLLBACK;
BEGIN;
UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';
UPDATE animals SET species = 'pokemon' WHERE species is  null;
COMMIT;
BEGIN;
DELETE FROM animals;
ROLLBACK;
BEGIN;
DELETE FROM animals WHERE date_of_birth > '2022-jan-1';
SAVEPOINT current_data;
UPDATE animals SET weight_kg =(weight_kg  * -1);
ROLLBACK TO SAVEPOINT current_data;
UPDATE animals SET weight_kg =(weight_kg  * -1) WHERE weight_kg < 0;
COMMIT;
SELECT COUNT(id) AS totalAnimals FROM animals;
SELECT COUNT(id) FROM animals WHERE escapet_attempts = 0;
SELECT SUM(weight_kg) / COUNT(id) FROM animals;
SELECT id,escapet_attempts, name FROM animals WHERE escapet_attempts = (SELECT MAX(escapet_attempts) FROM animals);
SELECT id,escapet_attempts, name FROM animals WHERE escapet_attempts = (SELECT MAX(escapet_attempts) FROM animals);
 SELECT MIN (weight_kg), MAX (weight_kg) FROM animals;
 SELECT AVG(escapet_attempts) FROM animals WHERE date_of_birth BETWEEN '1990-01-1' AND '2000-12-31';
 UPDATE animals SET species_id =2 WHERE name LIKE '%mon';
UPDATE animals SET species_id = 1 WHERE species_id IS NULL;
UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Sam Smith') WHERE name = 'Agumon';
UPDATE animals SET owner_id= (SELECT id FROM owners WHERE full_name = 'Jennifer Orwell') WHERE name IN ('Gabumon','Pikachu');UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Bob') WHERE name IN ('Devimon','Plantmon');
UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Melody Pond') WHERE name IN ('Blossom','Squirtle','Charmander');
UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Dean Winchester') WHERE name IN ('Angemon','Boarmon');
SELECT name FROM animals INNER JOIN owners ON animals.owner_id = owners.id WHERE owners.full_name = 'Melody Pond';
select species.name, count(animals.id) from animals INNER JOIN species ON animals.species_id = species.id group by species.id;
select owners.full_name AS owner,animals.name AS animalName, species.name AS Type FROM animals INNER JOIN owners ON  animals.owner_id = owners.id INNER JOIN species ON animals.species_id = species.id WHERE species.name = 'Digimon' AND owners.full_name = 'Jennifer Orwell';
SELECT owners.full_name, animals.name, escapet_attempts FROM animals INNER JOIN owners ON animals.owner_id = owners.id WHERE escapet_attempts = 0 AND owners.full_name = 'Dean Winchester'
SELECT owners.full_name FROM owners INNER JOIN animals ON owners.id = animals.owner_id GROUP BY owners.full_name ORDER BY COUNT(*) DESC LIMIT 1;

SELECT a.name, vets.name, v.visit_date 
FROM animals a JOIN visits v ON a.id = v.animal_id 
JOIN vets ON vets.id = v.vet_id 
WHERE vets.id = 1 ORDER BY v.visit_date DESC LIMIT 1;

ELECT COUNT(a.name), vets.name 
FROM animals a JOIN visits v ON a.id = v.animal_id 
JOIN vets ON vets.id = v.vet_id 
WHERE vets.name = 'Stephanie Mendez' GROUP BY vets.name;

SELECT species.name, vets.name 
FROM vets FULL JOIN specializations ON specializations.vet_id = vets.id 
FULL JOIN species ON species.id = specializations.species_id;

SELECT animals.name, vets.name, visits.visit_date 
FROM vets FULL JOIN visits ON visits.vet_id = vets.id 
FULL JOIN animals ON animals.id = visits.animal_id 
WHERE vets.name = 'Stephanie Mendez' AND visits.visit_date 
BETWEEN '2020-04-01' AND '2020-08-30';

SELECT COUNT(animals.name), animals.name
FROM vets JOIN visits ON visits.vet_id = vets.id 
JOIN animals ON animals.id = visits.animal_id 
GROUP BY animals.name ORDER BY count DESC LIMIT 1;

SELECT vets.name, a.name, visits.visit_date 
FROM vets JOIN visits ON visits.vet_id = vets.id 
JOIN animals a ON a.id = visits.animal_id 
WHERE vets.name = 'Maisy Smith' ORDER BY visits.visit_date LIMIT 1;

SELECT a.name AS animal,a.date_of_birth,a.escapet_attempts,a.neutured,
a.weight_kg,species.name,vets.name AS vet, vets.age,vets.date_of_graduation,v.visit_date 
FROM vets JOIN visits v ON v.vet_id = vets.id JOIN animals a ON a.id = v.animal_id 
JOIN species ON a.species_id = species.id ORDER BY v.visit_date DESC LIMIT 1;

SELECT animals.name as Animal, species.name AS species,
vets.name AS vet, vet_sp.name AS specialized
FROM vets JOIN visits ON vets.id = visits.vet_id
JOIN animals ON visits.animal_id = animals.id
JOIN species ON species.id = animals.species_id
JOIN specializations ON specializations.vet_id = vets.id
JOIN species vet_sp ON vet_sp.id = specializations.species_id
WHERE species.id != vet_sp.id;

SELECT species.name AS species
FROM vets JOIN visits ON vets.id = visits.vet_id
JOIN animals ON visits.animal_id = animals.id
JOIN species ON species.id = animals.species_id
WHERE vets.name = 'Maisy Smith' GROUP BY species LIMIT 1;

