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




