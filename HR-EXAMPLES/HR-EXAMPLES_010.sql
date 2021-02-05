
SELECT *FROM EMPLOYEES;

SELECT *FROM EMPLOYEES
WHERE LAST_NAME='King';

SELECT*FROM EMPLOYeES
WHERE LAST_NAME='&LAST_NAME';

SELECT*FROM EMPLOYeES
WHERE LAST_NAME LIKE '&LAST_NAME';

SELECT* FROM EMPLOYEES
WHERE LAST_NAME LIKE '_in%';

SELECT *FROM EMPLOYEES
WHERE LAST_NAME LIKE '__pp%';

SELECT *FROM EMPLOYEES
WHERE FIRST_NAME LIKE '_an_i%';

SELECT *FROM EMPLOYEES
WHERE SALARY=12008;

SELECT *FROM EMPLOYEES
WHERE SALARY='12008';

SELECT *FROM EMPLOYEES
WHERE SALARY*12=120000;

SELECT 
END_DATE-START_DATE "ALMOST ONE YEAR",
JOB_ID,EMPLOYEE_ID,DEPARTMENT_ID
FROM
JOB_HISTORY
WHERE END_DATE-START_DATE<365;

SELECT*FROM EMPLOYEES
WHERE JOB_ID LIKE 'SA%' ;

SELECT*FROM EMPLOYEES
WHERE JOB_ID LIKE '%SA\_%' ESCAPE '\';



-------TO COUNT THE NUMBER OF COLUMNS IN A TABLE----
------(TABLODAKI KOLON SAYISINI BULMAK)-------------

select count(*) 
from user_tab_columns
where table_name='EMPLOYEES';

SELECT *FROM USER_TAB_COLUMNS
where table_name='EMPLOYEES';





SELECT t.owner, 
       t.table_name, 
       t.num_rows, 
       Count(*) NUM_COLUMNS
FROM   all_tables t 
       LEFT JOIN all_tab_columns c 
              ON t.table_name = c.table_name 
WHERE  num_rows IS NOT NULL AND T.OWNER='HR'
GROUP  BY t.owner, 
          t.table_name, 
          t.num_rows 
ORDER  BY t.num_rows DESC;

------------------------------------------------


