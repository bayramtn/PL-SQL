CREATE TABLE TABLEA
(
COLUMN_A VARCHAR2(10),
COLUMN_B VARCHAR2(10)
);

CREATE TABLE TABLE1
(
COLUMN_1 VARCHAR2(10),
COLUMN_BIR VARCHAR2(10)
);

INSERT INTO TABLEA (COLUMN_A,COLUMN_B) VALUES ('A','a');
INSERT INTO TABLEA (COLUMN_A,COLUMN_B) VALUES ('B','b');
INSERT INTO TABLEA (COLUMN_A,COLUMN_B) VALUES ('C','c');
INSERT INTO TABLEA (COLUMN_A,COLUMN_B) VALUES ('D','d');

INSERT INTO TABLE1 (COLUMN_1,COLUMN_BIR) VALUES ('1','BIR');
INSERT INTO TABLE1 (COLUMN_1,COLUMN_BIR) VALUES ('2','IKI');
INSERT INTO TABLE1 (COLUMN_1,COLUMN_BIR) VALUES ('3','UC');
INSERT INTO TABLE1 (COLUMN_1,COLUMN_BIR) VALUES ('4','DORT');

SELECT*FROM TABLEA;  ---4 ROWS
SELECT*FROM TABLE1;  ---4 ROWS

SELECT *
FROM TABLEA,TABLE1;  --4X4 ROWS

SELECT * 
FROM TABLEA
CROSS JOIN TABLE1;    --4X4 ROWS

SELECT *
FROM TABLEA,TABLE1
WHERE COLUMN_A='A';

SELECT * 
FROM TABLEA
CROSS JOIN TABLE1
WHERE COLUMN_A='A';




DROP TABLE TABLEA;
DROP TABLE TABLE1;

--------------------------------------------------------------
SELECT*FROM JOBS;  --19ROWS
SELECT*FROM REGIONS;---4 ROWS
---------------------------------
SELECT*
FROM JOBS,REGIONS; ---4X19 ROWS

SELECT*
FROM JOBS 
CROSS JOIN REGIONS;---4X19 ROWS

----------------------------------------
SELECT JOB_TITLE,REGION_NAME
FROM JOBS,REGIONS
WHERE REGION_NAME='Europe';




