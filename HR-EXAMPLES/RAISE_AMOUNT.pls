CREATE OR REPLACE PROCEDURE RAISE_AMOUNT 
(
  E_ID IN NUMBER,
  RAISE_AMT IN NUMBER DEFAULT 0
) 
AS 
BEGIN
  UPDATE EMPLOYEES 
  SET SALARY=SALARY*(1+RAISE_AMT )
  WHERE EMPLOYEE_ID=E_ID
  ;
END RAISE_AMOUNT; 

