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

 
/*CHALLENGE: Karaoke song selector
We've created a table with songs, and in this challenge, you'll use queries to decide what songs to sing.
*/

CREATE TABLE songs (
    id INTEGER PRIMARY KEY,
    title TEXT,
    artist TEXT,
    mood TEXT,
    duration INTEGER,
    released INTEGER);
    
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("Bohemian Rhapsody", "Queen", "epic", 60, 1975);
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("Let it go", "Idina Menzel", "epic", 227, 2013);
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("I will survive", "Gloria Gaynor", "epic", 198, 1978);
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("Twist and Shout", "The Beatles", "happy", 152, 1963);
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("La Bamba", "Ritchie Valens", "happy", 166, 1958);
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("I will always love you", "Whitney Houston", "epic", 273, 1992);
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("Sweet Caroline", "Neil Diamond", "happy", 201, 1969);
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("Call me maybe", "Carly Rae Jepsen", "happy", 193, 2011);
    
/*Select all the song titles.
*/

SELECT title FROM songs;

/*Show the titles of the songs that have an 'epic' mood or a release date after 1990.
*/

SELECT title FROM songs WHERE mood = "epic" OR released > 1990;

/*Show the titles of songs that are 'epic', and released after 1990, and less than 4 minutes long.
Note that the duration column is measured in seconds.
*/

SELECT title FROM songs WHERE mood = "epic" AND released > 1990 AND duration < 240;
 

/*CHALLENGE: Playlist maker
We've created a database of songs and artists, and you'll make playlists 
from them in this challenge. 
*/

CREATE TABLE artists (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    country TEXT,
    genre TEXT);

INSERT INTO artists (name, country, genre)
    VALUES ("Taylor Swift", "US", "Pop");
INSERT INTO artists (name, country, genre)
    VALUES ("Led Zeppelin", "US", "Hard rock");
INSERT INTO artists (name, country, genre)
    VALUES ("ABBA", "Sweden", "Disco");
INSERT INTO artists (name, country, genre)
    VALUES ("Queen", "UK", "Rock");
INSERT INTO artists (name, country, genre)
    VALUES ("Celine Dion", "Canada", "Pop");
INSERT INTO artists (name, country, genre)
    VALUES ("Meatloaf", "US", "Hard rock");
INSERT INTO artists (name, country, genre)
    VALUES ("Garth Brooks", "US", "Country");
INSERT INTO artists (name, country, genre)
    VALUES ("Shania Twain", "Canada", "Country");
INSERT INTO artists (name, country, genre)
    VALUES ("Rihanna", "US", "Pop");
INSERT INTO artists (name, country, genre)
    VALUES ("Guns N' Roses", "US", "Hard rock");
INSERT INTO artists (name, country, genre)
    VALUES ("Gloria Estefan", "US", "Pop");
INSERT INTO artists (name, country, genre)
    VALUES ("Bob Marley", "Jamaica", "Reggae");

CREATE TABLE songs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    artist TEXT,
    title TEXT);

INSERT INTO songs (artist, title)
    VALUES ("Taylor Swift", "Shake it off");
INSERT INTO songs (artist, title)
    VALUES ("Rihanna", "Stay");
INSERT INTO songs (artist, title)
    VALUES ("Celine Dion", "My heart will go on");
INSERT INTO songs (artist, title)
    VALUES ("Celine Dion", "A new day has come");
INSERT INTO songs (artist, title)
    VALUES ("Shania Twain", "Party for two");
INSERT INTO songs (artist, title)
    VALUES ("Gloria Estefan", "Conga");
INSERT INTO songs (artist, title)
    VALUES ("Led Zeppelin", "Stairway to heaven");
INSERT INTO songs (artist, title)
    VALUES ("ABBA", "Mamma mia");
INSERT INTO songs (artist, title)
    VALUES ("Queen", "Bicycle Race");
INSERT INTO songs (artist, title)
    VALUES ("Queen", "Bohemian Rhapsody");
INSERT INTO songs (artist, title)
    VALUES ("Guns N' Roses", "Don't cry");
    
/*Select the title of all the songs by the artist named 'Queen'.
*/

SELECT title FROM songs WHERE artist = "Queen";
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
/*Select the name of all of the artists from the 'Pop' genre.
*/

Select name FROM artists WHERE genre = "Pop";

/*Select the title of all the songs from the 'Pop' artists. It should 
use IN on a nested subquery that's based on your previous query.
*/

SELECT title FROM songs 
WHERE artist IN (
    SELECT name FROM artists 
    WHERE genre = "Pop");
    

/*CHALLENGE: Wordiest author
We've created a database of a few popular authors and their books, with word counts 
for each book.
*/

CREATE TABLE books (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    author TEXT,
    title TEXT,
    words INTEGER);
    
INSERT INTO books (author, title, words)
    VALUES ("J.K. Rowling", "Harry Potter and the Philosopher's Stone", 79944);
INSERT INTO books (author, title, words)
    VALUES ("J.K. Rowling", "Harry Potter and the Chamber of Secrets", 85141);
INSERT INTO books (author, title, words)
    VALUES ("J.K. Rowling", "Harry Potter and the Prisoner of Azkaban", 107253);
INSERT INTO books (author, title, words)
    VALUES ("J.K. Rowling", "Harry Potter and the Goblet of Fire", 190637);
INSERT INTO books (author, title, words)
    VALUES ("J.K. Rowling", "Harry Potter and the Order of the Phoenix", 257045);
INSERT INTO books (author, title, words)
    VALUES ("J.K. Rowling", "Harry Potter and the Half-Blood Prince", 168923);
INSERT INTO books (author, title, words)
    VALUES ("J.K. Rowling", "Harry Potter and the Deathly Hallows", 197651);

INSERT INTO books (author, title, words)
    VALUES ("Stephenie Meyer", "Twilight", 118501);
INSERT INTO books (author, title, words)
    VALUES ("Stephenie Meyer", "New Moon", 132807);
INSERT INTO books (author, title, words)
    VALUES ("Stephenie Meyer", "Eclipse", 147930);
INSERT INTO books (author, title, words)
    VALUES ("Stephenie Meyer", "Breaking Dawn", 192196);
    
INSERT INTO books (author, title, words)
    VALUES ("J.R.R. Tolkien", "The Hobbit", 95022);
INSERT INTO books (author, title, words)
    VALUES ("J.R.R. Tolkien", "Fellowship of the Ring", 177227);
INSERT INTO books (author, title, words)
    VALUES ("J.R.R. Tolkien", "Two Towers", 143436);
INSERT INTO books (author, title, words)
    VALUES ("J.R.R. Tolkien", "Return of the King", 134462);

/*Select all the authors who have written more than 1 million words, using GROUP BY and HAVING. Your results table should 
include the 'author' and their total word count as a 'total_words' column.
*/

SELECT author, SUM(words) AS total_words 
FROM books GROUP BY author 
HAVING total_words > 1000000;

 /*Select all the authors that write more than an average of 150,000 words per book. 
 Your results table should include the 'author' and average words as an 'avg_words' 
 column.
 */

 SELECT author, AVG(words) AS avg_words 
 FROM books 
 GROUP BY author
 HAVING avg_words > 150000;
 
 
/*CHALLENGE: Gradebook
We've created a database to track student grades, with their name, number grade, 
and what percent of activities they've completed. 
*/

CREATE TABLE student_grades (
    id integer PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    number_grade INTEGER,
    fraction_completed REAL);
    
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winston", 90, 0.805);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winnefer", 95, 0.901);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winsteen", 85, 0.906);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Wincifer", 66, 0.7054);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winster", 76, 0.5013);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winstonia", 82, 0.9045);

/*Select all of the rows, and display the name, number_grade, and percent_completed, 
which you can compute by multiplying and rounding the fraction_completed column.
*/

SELECT name, number_grade, ROUND(fraction_completed * 100) AS percent_completed 
 FROM student_grades; 

/*The goal is a table that shows how many students have earned which letter_grade. 
You can output the letter_grade by using CASE with the number_grade column, outputting 
'A' for grades > 90, 
'B' for grades > 80, 
'C' for grades > 70, 
and 'F' otherwise. 
Then you can use COUNT with GROUP BY to show the number of students with each of those grades.
*/

SELECT COUNT(*),
    CASE
        WHEN number_grade > 90 THEN "A"
        WHEN number_grade > 80 THEN "B"
        WHEN number_grade > 70 THEN "C"
        ELSE "F"
    END AS "letter_grade"
FROM student_grades
GROUP BY letter_grade


/*CHALLENGE: Bobbie's hobbies
We've created a database of people and hobbies, and each row in hobbies is related to a row in persons 
via the person_id column. Insert one more row in persons and then one more row in hobbies that is 
related to the newly inserted person.
*/

CREATE TABLE persons (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    age INTEGER);
    
INSERT INTO persons (name, age) VALUES ("Bobby McBobbyFace", 12);
INSERT INTO persons (name, age) VALUES ("Lucy BoBucie", 25);
INSERT INTO persons (name, age) VALUES ("Banana FoFanna", 14);
INSERT INTO persons (name, age) VALUES ("Shish Kabob", 20);
INSERT INTO persons (name, age) VALUES ("Fluffy Sparkles", 8);
INSERT INTO persons (name, age) VALUES ("Another name", 40);

CREATE table hobbies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    person_id INTEGER,
    name TEXT);
    
INSERT INTO hobbies (person_id, name) VALUES (1, "drawing");
INSERT INTO hobbies (person_id, name) VALUES (1, "coding");
INSERT INTO hobbies (person_id, name) VALUES (2, "dancing");
INSERT INTO hobbies (person_id, name) VALUES (2, "coding");
INSERT INTO hobbies (person_id, name) VALUES (3, "skating");
INSERT INTO hobbies (person_id, name) VALUES (3, "rowing");
INSERT INTO hobbies (person_id, name) VALUES (3, "drawing");
INSERT INTO hobbies (person_id, name) VALUES (4, "coding");
INSERT INTO hobbies (person_id, name) VALUES (4, "dilly-dallying");
INSERT INTO hobbies (person_id, name) VALUES (4, "meowing");
INSERT INTO hobbies (person_id, name) VALUES (6, "running");

/*Select the 2 tables with a join so that you can see each person's name next to their hobby.
*/

SELECT persons.name, hobbies.name FROM persons 
JOIN hobbies 
ON persons.id = hobbies.person_id;

/*Show only the name and hobbies of 'Bobby McBobbyFace', using JOIN combined with WHERE.
*/

SELECT persons.name, hobbies.name FROM persons 
JOIN hobbies 
ON persons.id = hobbies.person_id
WHERE persons.name = "Bobby McBobbyFace";


/*CHALLENGE: Customer order
We've created a database for customers and their orders. Note, not all of the customers 
have made orders. 
*/

 CREATE TABLE customers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    email TEXT);
    
INSERT INTO customers (name, email) VALUES ("Doctor Who", "doctorwho@timelords.com");
INSERT INTO customers (name, email) VALUES ("Harry Potter", "harry@potter.com");
INSERT INTO customers (name, email) VALUES ("Captain Awesome", "captain@awesome.com");

CREATE TABLE orders (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER,
    item TEXT,
    price REAL);

INSERT INTO orders (customer_id, item, price)
    VALUES (1, "Sonic Screwdriver", 1000.00);
INSERT INTO orders (customer_id, item, price)
    VALUES (2, "High Quality Broomstick", 40.00);
INSERT INTO orders (customer_id, item, price)
    VALUES (1, "TARDIS", 1000000.00);

/*Come up with a query that lists the name and email of every
 customer followed by the item and price of orders they've made. Use a LEFT OUTER JOIN 
 so that a customer is listed even if they've made no orders, and don't add any 
 ORDER BY.
 */

 SELECT customers.name, customers.email, orders.item, orders.price
 FROM customers
 LEFT OUTER JOIN orders
 ON customers.id = orders.customer_id;

 /*Create another query that will result in one row per each customer, with their name, 
 email, and total amount of money they've spent on orders. Sort the rows according to 
 the total money spent, from the most spent to the least spent.
(Tip: You should always GROUP BY on the column that is most likely to be unique 
in a row.)
*/

 SELECT customers.name, customers.email, SUM(orders.price) AS "total"
 FROM customers
 LEFT OUTER JOIN orders
 ON customers.id = orders.customer_id
 GROUP BY customers.id
 ORDER BY orders.price DESC;
 

/*CHALLENGE: Sequels
We've created a table with all the 'Harry Potter' movies, with a sequel_id column 
that matches the id of the sequel for each movie.
*/

CREATE TABLE movies (id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    released INTEGER,
    sequel_id INTEGER);

INSERT INTO movies 
    VALUES (1, "Harry Potter and the Philosopher's Stone", 2001, 2);
INSERT INTO movies 
    VALUES (2, "Harry Potter and the Chamber of Secrets", 2002, 3);
INSERT INTO movies 
    VALUES (3, "Harry Potter and the Prisoner of Azkaban", 2004, 4);
INSERT INTO movies 
    VALUES (4, "Harry Potter and the Goblet of Fire", 2005, 5);
INSERT INTO movies 
    VALUES (5, "Harry Potter and the Order of the Phoenix ", 2007, 6);
INSERT INTO movies 
    VALUES (6, "Harry Potter and the Half-Blood Prince", 2009, 7);
INSERT INTO movies 
    VALUES (7, "Harry Potter and the Deathly Hallows – Part 1", 2010, 8);
INSERT INTO movies 
    VALUES (8, "Harry Potter and the Deathly Hallows – Part 2", 2011, NULL);

/*Issue a  SELECT that will show the title of each movie next to its 
sequel's title (or NULL if it doesn't have a sequel).
*/

SELECT movies.title AS "movie_title", sequel.title AS "sequel_title"
FROM movies
LEFT OUTER JOIN movies sequel
ON movies.sequel_id = sequel.id;


/*CHALLENGE: Friendbook
We've created a database for a friend networking site, with a table storing data on 
each person, a table on each person's hobbies, and a table of friend connections 
between the people.
*/

CREATE TABLE persons (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fullname TEXT,
    age INTEGER);
    
INSERT INTO persons (fullname, age) VALUES ("Bobby McBobbyFace", "12");
INSERT INTO persons (fullname, age) VALUES ("Lucy BoBucie", "25");
INSERT INTO persons (fullname, age) VALUES ("Banana FoFanna", "14");
INSERT INTO persons (fullname, age) VALUES ("Shish Kabob", "20");
INSERT INTO persons (fullname, age) VALUES ("Fluffy Sparkles", "8");

CREATE table hobbies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    person_id INTEGER,
    name TEXT);
    
INSERT INTO hobbies (person_id, name) VALUES (1, "drawing");
INSERT INTO hobbies (person_id, name) VALUES (1, "coding");
INSERT INTO hobbies (person_id, name) VALUES (2, "dancing");
INSERT INTO hobbies (person_id, name) VALUES (2, "coding");
INSERT INTO hobbies (person_id, name) VALUES (3, "skating");
INSERT INTO hobbies (person_id, name) VALUES (3, "rowing");
INSERT INTO hobbies (person_id, name) VALUES (3, "drawing");
INSERT INTO hobbies (person_id, name) VALUES (4, "coding");
INSERT INTO hobbies (person_id, name) VALUES (4, "dilly-dallying");
INSERT INTO hobbies (person_id, name) VALUES (4, "meowing");

CREATE table friends (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    person1_id INTEGER,
    person2_id INTEGER);

INSERT INTO friends (person1_id, person2_id)
    VALUES (1, 4);
INSERT INTO friends (person1_id, person2_id)
    VALUES (2, 3);
    
/*Use a JOIN to display a table showing people's names with their hobbies.
*/

SELECT persons.fullname, hobbies.name
FROM persons
JOIN hobbies
ON persons.id = hobbies.person_id;

/*Use another SELECT with a  JOIN to show the names of each pair of friends, 
based on the data in the friends table.
*/

SELECT a.fullname, b.fullname
FROM friends
JOIN persons a
ON a.id = friends.person1_id
JOIN persons b
ON b.id = friends.person2_id;


/*Challenge 13: Dynamic documents
We've created a database for a documents app, with rows for each document with it's 
title, content, and author.
*/

CREATE table documents (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    content TEXT,
    author TEXT);
    
INSERT INTO documents (author, title, content)
    VALUES ("Puff T.M. Dragon", "Fancy Stuff", "Ceiling wax, dragon wings, etc.");
INSERT INTO documents (author, title, content)
    VALUES ("Puff T.M. Dragon", "Living Things", "They're located in the left ear, you know.");
INSERT INTO documents (author, title, content)
    VALUES ("Jackie Paper", "Pirate Recipes", "Cherry pie, apple pie, blueberry pie.");
INSERT INTO documents (author, title, content)
    VALUES ("Jackie Paper", "Boat Supplies", "Rudder - guitar. Main mast - bed post.");
INSERT INTO documents (author, title, content)
    VALUES ("Jackie Paper", "Things I'm Afraid Of", "Talking to my parents, the sea, giant pirates, heights.");

SELECT * FROM documents;

/*Use UPDATE to change the author to 'Jackie Draper' for all rows where it's currently
 'Jackie Paper'. Then re-select all the rows to make sure the table changed like you expected.
*/

UPDATE documents
SET author = "Jackie Draper" 
WHERE author = "Jackie Paper";

SELECT * FROM documents;

/*Now you'll delete a row, being very careful not to delete all the rows. Only delete 
the row where the title is 'Things I'm Afraid Of'. Then re-select all the rows to 
make sure the table changed like you expected.
*/

DELETE FROM documents
WHERE title = "Things I'm Afraid Of";

SELECT * FROM documents;


/*Challenge 14: Clothing alterations
We've created a database of clothes, and decided we need a price column. 
Use ALTER to add a 'price' column to the table. 
Then select all the columns in each row to see what your table looks like now.
*/

CREATE TABLE clothes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    type TEXT,
    design TEXT);
    
INSERT INTO clothes (type, design)
    VALUES ("dress", "pink polka dots");
INSERT INTO clothes (type, design)
    VALUES ("pants", "rainbow tie-dye");
INSERT INTO clothes (type, design)
    VALUES ("blazer", "black sequin");

ALTER TABLE clothes ADD price Integer;
SELECT * FROM clothes;

/*Now assign each item a price, using UPDATE - item 1 should be 10 dollars, item 2 
should be 20 dollars, item 3 should be 30 dollars. When you're done, do another 
SELECT of all the rows to check that it worked as expected.
*/

UPDATE clothes SET price = 10
WHERE id = 1;

UPDATE clothes SET price = 20
WHERE id = 2;

UPDATE clothes SET price = 30
WHERE id = 3;

SELECT * FROM clothes;

/*Now insert a new item into the table that has all three attributes filled in, 
including 'price'. Do one final SELECT of all the rows to check it worked.
*/

INSERT INTO clothes (type, design, price)
VALUES ("skirt", "striped", 56);

SELECT * FROM clothes;
