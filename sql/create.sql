CREATE TABLE user(
	username	VARCHAR(20) PRIMARY KEY,
	passwd		TEXT,
	email		VARCHAR(50)
);

CREATE TABLE route(
	id			INTEGER PRIMARY KEY AUTOINCREMENT,
	sdate		DATE,
	time		INTEGER,
	distance	INTEGER,
	driver		VARCHAR(20),

	startpoint	TEXT,
	endpoint	TEXT,

	FOREIGN KEY (driver) REFERENCES user
);

CREATE TABLE passenger(
	idroute		INTEGER,
	iduser		VARCHAR(20),

	FOREIGN KEY (idroute) REFERENCES route,
	FOREIGN KEY (iduser) REFERENCES user
);

INSERT INTO user (username, passwd, email)
	VALUES ("sophie", "somerandomhash", "svalentin@essi.fr");

INSERT INTO user (username, passwd, email)
	VALUES ("mathieu", "somemorehash", "bivert@essi.fr");

INSERT INTO route (sdate, driver, startpoint, endpoint)
	VALUES (date('now'), "sophie", "Sophia-Antipolis", "Nice");

INSERT INTO passenger (idroute, iduser)
	VALUES (0, "mathieu");