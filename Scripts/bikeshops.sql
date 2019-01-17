CREATE TABLE TYPES (
	TYPE_ID NUMBER(5),
	TYPE_NAME VARCHAR2(25),
	TYPE_IMAGINE VARCHAR2(80),

	CONSTRAINT TYPE_ID_PK PRIMARY KEY (TYPE_ID)
);

INSERT INTO TYPES VALUES(1, 'city bike','null');
INSERT INTO TYPES VALUES(2, 'mountain bike','null');
INSERT INTO TYPES VALUES(3, 'BMX bike','null');
INSERT INTO TYPES VALUES(4, 'tandem bike','null');
INSERT INTO TYPES VALUES(5, 'electric bike','null');
INSERT INTO TYPES VALUES(6, 'velocipede','null');
INSERT INTO TYPES VALUES(7, 'riscio','null');

SELECT * FROM TYPES;
--DROP TABLE TYPES;

CREATE TABLE USERS (
	USER_ID NUMBER(5),
	USER_NAME VARCHAR2(20) UNIQUE,
	USER_PASSWORD VARCHAR2(10),
	USER_ROLE VARCHAR2(10),

	CONSTRAINT USER_ID_PK PRIMARY KEY (USER_ID)
);
INSERT INTO USERS VALUES(1,'King', 'myshop', 'manager');
INSERT INTO USERS VALUES(2,'Paperino', 'paperina', 'client');
INSERT INTO USERS VALUES(3,'Selena', 'fotodipiedi', 'client');

SELECT * FROM USERS;
--DROP TABLE USERS;

CREATE TABLE BICYCLES (
	BICYCLE_ID NUMBER(5),
	TARGET VARCHAR2(30),
	TYPE_ID NUMBER(5),
	BRAND VARCHAR2(30),
	MODEL VARCHAR2(30),
	PRICE NUMBER(7,2),
	STOCK NUMBER(10),
	
	CONSTRAINT BICYCLE_ID_PK PRIMARY KEY (BICYCLE_ID),
	CONSTRAINT TYPE_ID_FK FOREIGN KEY (TYPE_ID)
		REFERENCES TYPES (TYPE_ID)
);
INSERT INTO BICYCLES VALUES (1, 'MAN', 1, 'ATALA', '25F', 500.50, 90);
--SELECT * FROM BICYCLES;
--DROP TABLE BICYCLES;

