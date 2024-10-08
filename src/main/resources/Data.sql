-- DROP TABLES & VIEW
DROP VIEW  PERSON_ADDRESS;
DROP TABLE PERSON;
DROP TABLE ADDRESS;

-- CREATE TABLES & VIEW
CREATE TABLE ADDRESS (
  ID        NUMBER GENERATED ALWAYS AS IDENTITY,
  CITY      NVARCHAR2(100),
  STREET    NVARCHAR2(100),
  CONSTRAINT PK_ADDRESS_ID
    PRIMARY KEY (ID)
);

CREATE TABLE PERSON (
  ID         NUMBER GENERATED ALWAYS AS IDENTITY,
  NAME       NVARCHAR2(100),
  AGE        NUMERIC,
  ADDRESS_ID NUMERIC,
  CONSTRAINT PK_PERSON_ID
    PRIMARY KEY (ID),
  CONSTRAINT FK_PERSON_ADDRESS_ID
    FOREIGN KEY (ADDRESS_ID)
    REFERENCES  ADDRESS(ID)
);

CREATE VIEW PERSON_ADDRESS AS
SELECT PERSON.ID AS ID, NAME, AGE, CITY, STREET
FROM   PERSON INNER JOIN ADDRESS ON PERSON.ADDRESS_ID = ADDRESS.ID;

-- INSERT RECORDS
INSERT INTO ADDRESS (CITY, STREET) VALUES ('London', 'Oxford Street');
INSERT INTO ADDRESS (CITY, STREET) VALUES ('Boston', 'Beacon Street');
INSERT INTO ADDRESS (CITY, STREET) VALUES ('Sydney', 'George Street');

INSERT INTO PERSON (NAME, AGE, ADDRESS_ID) VALUES ('John', 10, 1);
INSERT INTO PERSON (NAME, AGE, ADDRESS_ID) VALUES ('Bill', 20, 2);
INSERT INTO PERSON (NAME, AGE, ADDRESS_ID) VALUES ('Jill', 30, 3);




