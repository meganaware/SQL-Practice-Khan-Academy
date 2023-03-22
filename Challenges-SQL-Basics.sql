/*
Khan Academy Intro to SQL: Querying and Managing Data 
Lesson 1: SQL Basics 
Course Challenges
*/

/*CHALLENGE: Book list database
What are your favorite books? You can make a database table to store them in! 
*/

/*In this first step, create a table to store your list of books. It should have columns for id, name, and rating.
*/

CREATE TABLE books (id INTEGER PRIMARY KEY, name TEXT, rating INTEGER);

/*Now, add three of your favorite books into the table.
*/

INSERT INTO books VALUES
(1, 'The Night Circus', 2),
(2, 'Icebreaker', 1),
(3, 'Ugly Love', 3)
;


/*CHALLENGE: Box office hits database 
This database contains an incomplete list of box office hits and their release year. 
You're going to get the results back out of the database in different ways! 
 */
 
CREATE TABLE movies (id INTEGER PRIMARY KEY, name TEXT, release_year INTEGER);
INSERT INTO movies VALUES (1, "Avatar", 2009);
INSERT INTO movies VALUES (2, "Titanic", 1997);
INSERT INTO movies VALUES (3, "Star Wars: Episode IV - A New Hope", 1977);
INSERT INTO movies VALUES (4, "Shrek 2", 2004);
INSERT INTO movies VALUES (5, "The Lion King", 1994);
INSERT INTO movies VALUES (6, "Disney's Up", 2009);

/*Select all the movies.
*/

SELECT * FROM movies;

/*Retrieve only the movies that were released in the year 2000 or later, not before. 
Sort the results so that the earlier movies are listed first. 
*/

SELECT * FROM movies WHERE release_year > 2000 ORDER BY release_year;
 
 
/*CHALLENGE: To do list stats
Here's a table containing a TODO list with the number of minutes it will take to complete each item. 
*/

/*Insert another item to your todo list with the estimated minutes it will take.
*/

CREATE TABLE todo_list (id INTEGER PRIMARY KEY, item TEXT, minutes INTEGER);
INSERT INTO todo_list VALUES (1, "Wash the dishes", 15);
INSERT INTO todo_list VALUES (2, "vacuuming", 20);
INSERT INTO todo_list VALUES (3, "Learn some stuff on KA", 30);
INSERT INTO todo_list VALUES (4, "Read homework", 60);

/*Select the SUM of minutes it will take to do all of the items on your TODO list.
*/

SELECT SUM(minutes) FROM todo_list;
