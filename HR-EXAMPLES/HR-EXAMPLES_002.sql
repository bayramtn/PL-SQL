SELECT 
employee_ýd,fýrst_name,last_name,job_ýd,manager_ýd,department_ýd,LEVEL 
FROM employees
CONNECT BY PRIOR employee_id = manager_id
START WITH manager_ýd IS NULL ORDER BY LEVEL;

SELECT 
employee_ýd,fýrst_name,last_name,job_ýd,manager_ýd,department_ýd
,(select fýrst_name from employees e where e.employee_id = emp.manager_id)as boss
FROM 
employees emp  ORDER BY 1;

SELECT 
employee_ýd,fýrst_name,last_name,job_ýd,manager_ýd,department_ýd,LEVEL ,
(select fýrst_name from employees e where e.employee_id = emp.manager_id)as boss
FROM employees emp
CONNECT BY PRIOR employee_id = manager_id
START WITH manager_ýd IS NULL ORDER BY LEVEL;



SELECT 
employee_ýd,fýrst_name,last_name,job_ýd,manager_ýd,department_ýd,LEVEL ,
sys_connect_by_path(fýrst_name,'/') as HIER
FROM employees
CONNECT BY PRIOR employee_id = manager_id
START WITH manager_ýd IS null ORDER BY LEVEL;


