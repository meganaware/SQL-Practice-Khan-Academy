/* Khan Academy Intro to SQL: Querying and Managing Data  
Lesson 3: Relational Queries In SQL*/ 

/*PROJECT: Famous people
  In this project, you’re going to make your own table with some small set of “famous people”, then make more tables about things they do and join those to create nice human readable lists. 
  Contains at least two tables with at least 15 rows total. 
  One of the tables contains a column that relates to the primary key of another table. 
  Has at least one query that does a JOIN.*/


CREATE TABLE celebrities (
id INTEGER PRIMARY KEY AUTOINCREMENT,
name TEXT,
age INTEGER,
home_state TEXT,
instagram_followers INTEGER);

INSERT INTO celebrities VALUES (1,'Dwayne The Rock Johnson', 49, 'California', 300000000); 
INSERT INTO celebrities VALUES (2,'Snoop Dogg', 50, 'California', 70000000); 
INSERT INTO celebrities VALUES (3,'Jay-Z', 52, 'New York', 0); 
INSERT INTO celebrities VALUES (4,'Beyonce', 40, 'Texas', 240000000); 
INSERT INTO celebrities VALUES (5,'Doja Cat', 49, 'California', 204000000); 
INSERT INTO celebrities VALUES (6,'Jennifer Lopez', 52, 'New York', 196000000); 
INSERT INTO celebrities VALUES (7,'Jada Pinkett Smith', 50, 'Maryland', 11000000); 
INSERT INTO celebrities VALUES (8,'Will Smith', 53, 'Pennsylvania', 58400000); 
INSERT INTO celebrities VALUES (9,'Ari Lennox', 30, 'Washington D.C.', 1800000); 
INSERT INTO celebrities VALUES (10,'J.Cole', 37, 'North Carolina', 7500000); 

CREATE TABLE movies (
movies_id INTEGER ,
name TEXT,
release_year INTEGER,
rate INTEGER);

INSERT INTO movies VALUES (8,'Men In Black', 1997, 8);
INSERT INTO movies VALUES (1, 'Fast and Furious', 2019, 6);
INSERT INTO movies VALUES (6, 'Marry Me', 2022, 7);
INSERT INTO movies VALUES (7, 'Girls Trip', 2017, 5);
INSERT INTO movies VALUES (4, 'Obsessed', 2009, 8);


CREATE TABLE married (
married_id INTEGER,
name TEXT,
married_status TEXT); 

INSERT INTO married VALUES (1,'Dwayne The Rock Johnson', 'TRUE'); 
INSERT INTO married VALUES (2,'Snoop Dogg', 'TRUE'); 
INSERT INTO married VALUES (3,'Jay-Z', 'TRUE'); 
INSERT INTO married VALUES (4,'Beyonce', 'TRUE'); 
INSERT INTO married VALUES (5,'Doja Cat', 'FALSE'); 
INSERT INTO married VALUES (6,'Jennifer Lopez', 'FALSE'); 
INSERT INTO married VALUES (7,'Jada Pinkett Smith', 'TRUE'); 
INSERT INTO married VALUES (8,'Will Smith', 'TRUE'); 
INSERT INTO married VALUES (9,'Ari Lennox', 'FALSE'); 
INSERT INTO married VALUES (10,'J.Cole', 'FALSE'); 


SELECT * 
FROM celebrities; 

SELECT * 
FROM movies;

SELECT *
FROM married;

SELECT *
FROM celebrities, movies;

SELECT * FROM celebrities, married
WHERE celebrities.id = married.married_id;

SELECT celebrities.name, celebrities.age, married_status
FROM celebrities
JOIN married
ON celebrities.id = married.married_id;

SELECT celebrities.name, movies.name, movies.rate, movies.release_year
FROM celebrities
JOIN movies 
ON celebrities.id = movies.movies_id
WHERE rate > 5;
