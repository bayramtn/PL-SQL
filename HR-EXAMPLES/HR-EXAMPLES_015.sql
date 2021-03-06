SELECT*FROM EMPLOYEES;
SELECT*FROM DEPARTMENTS;


--------INNER JOIN----
SELECT *
FROM EMPLOYEES E
INNER JOIN DEPARTMENTS D
ON E.DEPARTMENT_ID=D.DEPARTMENT_ID;

----------------------------------
SELECT *
FROM EMPLOYEES E
INNER JOIN DEPARTMENTS D
USING (DEPARTMENT_ID);

---------EQUI JOIN----------------

SELECT *
FROM EMPLOYEES E,DEPARTMENTS D
WHERE E.DEPARTMENT_ID=D.DEPARTMENT_ID;
-----------------------------------

SELECT *
FROM EMPLOYEES E
INNER JOIN DEPARTMENTS D
ON E.DEPARTMENT_ID=D.DEPARTMENT_ID
MINUS
SELECT *
FROM EMPLOYEES E,DEPARTMENTS D
WHERE E.DEPARTMENT_ID=D.DEPARTMENT_ID;

--------------------------------------------------

SELECT*FROM JOBS;
SELECT*FROM EMPLOYEES;

SELECT JOB_ID,COUNT(*)
FROM EMPLOYEES
GROUP BY JOB_ID
ORDER BY JOB_ID;

SELECT*
FROM EMPLOYEES E
JOIN JOBS J ON
E.JOB_ID=J.JOB_ID;


SELECT E.EMPLOYEE_ID,E.LAST_NAME,E.JOB_ID,E.SALARY,J.MIN_SALARY,J.MAX_SALARY
FROM EMPLOYEES E
JOIN JOBS J ON
E.JOB_ID=J.JOB_ID
ORDER BY E.SALARY;

SELECT E.EMPLOYEE_ID,E.LAST_NAME,E.JOB_ID,E.SALARY,J.MIN_SALARY,J.MAX_SALARY
FROM EMPLOYEES E,JOBS J
WHERE E.JOB_ID=J.JOB_ID
ORDER BY E.SALARY;
---NON EQUI JOIN----------------
SELECT E.EMPLOYEE_ID,E.LAST_NAME,E.JOB_ID,J.JOB_ID,E.SALARY,J.MIN_SALARY,J.MAX_SALARY
FROM EMPLOYEES E,JOBS J
WHERE E.SALARY BETWEEN 24000 AND 25000   ---1 X 19=19 ROWS
ORDER BY E.JOB_ID;
----------------------------------------

SELECT*FROM JOB_HISTORY
ORDER BY START_DATE;
SELECT*FROM EMPLOYEES;

SELECT *
FROM JOB_HISTORY J
INNER JOIN EMPLOYEES E 
ON E.EMPLOYEE_ID=J.EMPLOYEE_ID
ORDER BY J.START_DATE;

SELECT J.*,E.FIRST_NAME
FROM JOB_HISTORY J,EMPLOYEES E 
WHERE E.EMPLOYEE_ID=J.EMPLOYEE_ID
ORDER BY J.START_DATE;

SELECT *
FROM JOB_HISTORY J
NATURAL JOIN EMPLOYEES E  ;

SELECT *
FROM   employees e
       NATURAL JOIN departments d;

SELECT*FROM EMPLOYEES WHERE EMPLOYEE_ID IN (200,101,102,201,114,176,122);
