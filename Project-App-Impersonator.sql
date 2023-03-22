/*Khan Academy Intro to SQL: Querying and Managing Data 
Lesson 4: Modifying Databases With SQL*/

/*PROJECT: App Impersonator
Think about your favorite apps, and pick one that stores your data- like a game that stores scores, an app that lets you post updates, etc. 
Now in this project, you're going to imagine that the app stores your data in a SQL database (which is pretty likely!), and write SQL statements that might look like their own SQL.*/


/*CREATE a table to store the data.*/

CREATE TABLE tiktok (
id INTEGER PRIMARY KEY AUTOINCREMENT,
name TEXT,
followers INTEGER,
likes INTEGER);


/*INSERT a few example rows in the table.*/

INSERT INTO tiktok (name, followers, likes)
VALUES ('amauryguichon', 20600000, 391900000);

INSERT INTO tiktok (name, followers, likes)
VALUES ('tori.gerbig', 726600, 10100000);

INSERT INTO tiktok (name, followers, likes)
VALUES ('alixearle', 4800000, 262000000);

INSERT INTO tiktok (name, followers, likes)
VALUES ('mrbeast', 78700000, 737800000);


/*Use an UPDATE to emulate what happens when you edit data in the app.*/

SELECT * 
FROM tiktok;

UPDATE tiktok 
SET followers = 5000000
WHERE id = 3;


/*Use a DELETE to emulate what happens when you delete data in the app.*/

SELECT * 
FROM tiktok;

DELETE FROM tiktok
WHERE id = 2;


SELECT *
FROM tiktok;
