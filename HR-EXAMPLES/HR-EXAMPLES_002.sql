SELECT 
employee_�d,f�rst_name,last_name,job_�d,manager_�d,department_�d,LEVEL 
FROM employees
CONNECT BY PRIOR employee_id = manager_id
START WITH manager_�d IS NULL ORDER BY LEVEL;

SELECT 
employee_�d,f�rst_name,last_name,job_�d,manager_�d,department_�d
,(select f�rst_name from employees e where e.employee_id = emp.manager_id)as boss
FROM 
employees emp  ORDER BY 1;

SELECT 
employee_�d,f�rst_name,last_name,job_�d,manager_�d,department_�d,LEVEL ,
(select f�rst_name from employees e where e.employee_id = emp.manager_id)as boss
FROM employees emp
CONNECT BY PRIOR employee_id = manager_id
START WITH manager_�d IS NULL ORDER BY LEVEL;



SELECT 
employee_�d,f�rst_name,last_name,job_�d,manager_�d,department_�d,LEVEL ,
sys_connect_by_path(f�rst_name,'/') as HIER
FROM employees
CONNECT BY PRIOR employee_id = manager_id
START WITH manager_�d IS null ORDER BY LEVEL;


