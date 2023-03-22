/*
Khan Academy Intro to SQL: Querying and Managing Data 
Lesson 1: SQL Basics 
Project: Design a store database
Create your own store! Your store should sell one type of things, like clothing or bikes, whatever you want your store to specialize
in. You should have a table for all the items in your store, and at least 5 columns for the kind of data you think you'd need to store.
You should sell at least 15 items, and use select statements to order your items by price and show at least one statistic 
about the items.
*/

CREATE TABLE shoes(
id INTEGER PRIMARY KEY,
brand TEXT,
style TEXT,
type TEXT,
price INTEGER
);

INSERT INTO shoes VALUES(1,"HOKA", "Bondi", "cushion",165);
INSERT INTO shoes VALUES(2,"HOKA", "Clifton", "cushion",145);
INSERT INTO shoes VALUES(3,"HOKA", "Arahi", "stability",140);
INSERT INTO shoes VALUES(4,"HOKA", "Gaviota", "stability",170);
INSERT INTO shoes VALUES(5,"HOKA", "Kawana", "neutral",140);

INSERT INTO shoes VALUES(6,"Brooks", "Glycerin", "cushion",160);
INSERT INTO shoes VALUES(7,"Brooks", "Ghost", "neutral",140);
INSERT INTO shoes VALUES(8,"Brooks", "Adrenaline", "stability",140);
INSERT INTO shoes VALUES(9,"Brooks", "Ariel", "stability",160);
INSERT INTO shoes VALUES(10,"Brooks", "Levitate", "neutral",150);

INSERT INTO shoes VALUES(11,"ASICS", "Novablast", "neutral",140);
INSERT INTO shoes VALUES(12,"ASICS", "Gel-Nimbus", "neutral",160);
INSERT INTO shoes VALUES(13,"ASICS", "Gel-Cumulus", "cushion",130);
INSERT INTO shoes VALUES(14,"ASICS", "Gel-Kayano", "stability",160);
INSERT INTO shoes VALUES(15,"ASICS", "GT-2000", "stability",140);

SELECT * FROM shoes;

SELECT * FROM shoes 
ORDER BY price;

SELECT brand,style,type,MAX(price) FROM shoes;
