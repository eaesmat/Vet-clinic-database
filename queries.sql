/*Queries that provide answers to the questions from all projects.*/
SELECT * FROM animals WHERE name LIKE '%mon';
SELECT name FROM animals WHERE date_of_birth  BETWEEN '2016-01-01' AND '2019-12-31'; 
SELECT name FROM animals WHERE neutured = true AND escapet_attempts < 3;
SELECT date_of_birth FROM animals WHERE name = 'Agumon' OR NAME = 'Pikachu';
SELECT name,escapet_attempts FROM animals WHERE weight_kg > 10.5;
SELECT * FROM animals WHERE neutured = true;
SELECT * FROM animals WHERE name!= 'Gabumon';
SELECT * FROM animals WHERE weight_kg >= 10.4 AND weight_kg <= 17.3;

