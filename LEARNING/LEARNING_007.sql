

CREATE TABLE source_tab AS
SELECT level AS id,
       'Description of ' || level AS description
FROM   dual
CONNECT BY level <= 10;


SELECT*FROM source_tab;


CREATE TABLE dest_tab1 AS
SELECT * FROM source_tab WHERE 1=2;


CREATE TABLE dest_tab2 AS
SELECT * FROM source_tab WHERE 1=2;


CREATE TABLE dest_tab3 AS
SELECT * FROM source_tab WHERE 1=2;


SELECT*FROM dest_tab1;
SELECT*FROM dest_tab2;
SELECT*FROM dest_tab3;


CREATE TABLE pivot_source (
  id       NUMBER,
  mon_val  NUMBER,
  tue_val  NUMBER,
  wed_val  NUMBER,
  thu_val  NUMBER,
  fri_val  NUMBER
);


SELECT*FROM pivot_source;


INSERT INTO pivot_source VALUES (1, 111, 222, 333, 444, 555);
INSERT INTO pivot_source VALUES (2, 111, 222, 333, 444, 555);


CREATE TABLE pivot_dest (
  id   NUMBER,
  day  VARCHAR2(3),
  val  NUMBER
);


SELECT*FROM pivot_dest;


INSERT ALL
  INTO dest_tab1 (id, description) VALUES (id, description)
  INTO dest_tab2 (id, description) VALUES (id, description)
  INTO dest_tab3 (id, description) VALUES (id, description)
SELECT id, description
FROM   source_tab;


INSERT ALL
  INTO pivot_dest (id, day, val) VALUES (id, 'mon', mon_val)
  INTO pivot_dest (id, day, val) VALUES (id, 'tue', tue_val)
  INTO pivot_dest (id, day, val) VALUES (id, 'wed', wed_val)
  INTO pivot_dest (id, day, val) VALUES (id, 'thu', thu_val)
  INTO pivot_dest (id, day, val) VALUES (id, 'fri', fri_val)
SELECT *
FROM   pivot_source;


SELECT*FROM pivot_dest;
SELECT*FROM pivot_source;
SELECT*FROM dest_tab1;--16
SELECT*FROM dest_tab2;--18
SELECT*FROM dest_tab3;--24
SELECT*FROM source_tab;

INSERT ALL
  WHEN id <= 3 THEN
    INTO dest_tab1 (id, description) VALUES (id, description)
  WHEN id BETWEEN 4 AND 7 THEN
    INTO dest_tab2 (id, description) VALUES (id, description)
    INTO dest_tab3 (id, description) VALUES (id, description)
SELECT id, description
FROM   source_tab;


INSERT ALL
  WHEN id <= 3 THEN
    INTO dest_tab1 (id, description) VALUES (id, description)
  WHEN id BETWEEN 4 AND 7 THEN
    INTO dest_tab2 (id, description) VALUES (id, description)
  WHEN 1=1 THEN
    INTO dest_tab3 (id, description) VALUES (id, description)
SELECT id, description
FROM   source_tab;


INSERT FIRST
  WHEN id <= 3 THEN
    INTO dest_tab1 (id, description) VALUES (id, description)
  WHEN id <= 5 THEN
    INTO dest_tab2 (id, description) VALUES (id, description)
  ELSE
    INTO dest_tab3 (id, description) VALUES (id, description)
SELECT id, description
FROM   source_tab;

SELECT*FROM dest_tab1;--16---19
SELECT*FROM dest_tab2;--18--20
SELECT*FROM dest_tab3;--24--29


INSERT FIRST
  WHEN id <= 3 THEN
    INTO dest_tab1 (id, description) VALUES (id, description)
  ELSE
    INTO dest_tab2 (id, description) VALUES (id, description)
    INTO dest_tab3 (id, description) VALUES (id, description)
SELECT id, description
FROM   source_tab;

SELECT*FROM dest_tab1;--16---19---22
SELECT*FROM dest_tab2;--18--20---27
SELECT*FROM dest_tab3;--24--29---36


