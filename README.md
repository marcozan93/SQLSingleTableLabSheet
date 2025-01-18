# SQLSingleTableLabSheet
An example repository to help set up codespaces for SQLite for use with the Cloud and Databases Online course at the University of Bath


To run code from terminal use: ```sqlite3 testDB.db < main.sql```

Query to create the database:


Query to add data to the database:<br>
```INSERT INTO pet (name,owner,species,sex,checkups, birth,death)VALUES ('Fluffy','Harold','cat','f',5,'2001-02-04',NULL),
('Claws','Gwen','cat','m',2,'2000-03-17',NULL),
('Buffy','Harold','dog','f',7,'1999-05-13',NULL),
('Fang','Benny','dog','m',4,'2000-08-27',NULL),
('Bowser','Diane','dog','m',8,'1998-08-31','2001-07-29'),
('Chirpy','Gwen','bird','f',0,'2002-09-11',NULL),
('Whistler','Gwen','bird','',1,'2001-12-09',NULL),
('Slim','Benny','snake','m',5,'2001-04-29',NULL);
```