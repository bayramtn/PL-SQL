SELECT 
employee_id,first_name,last_name,job_id,manager_id,department_id,LEVEL 
FROM employees
CONNECT BY PRiOR employee_id = manager_id
START WiTH manager_id iS NULL ORDER BY LEVEL;

SELECT 
employee_id,first_name,last_name,job_id,manager_id,department_id
,(select first_name from employees e where e.employee_id = emp.manager_id)as boss
FROM 
employees emp  ORDER BY 1;

SELECT 
employee_id,first_name,last_name,job_id,manager_id,department_id,LEVEL ,
(select first_name from employees e where e.employee_id = emp.manager_id)as boss
FROM employees emp
CONNECT BY PRiOR employee_id = manager_id
START WiTH manager_id iS NULL ORDER BY LEVEL;



SELECT 
employee_id,first_name,last_name,job_id,manager_id,department_id,LEVEL ,
sys_connect_by_path(first_name,'/') as HiER
FROM employees
CONNECT BY PRiOR employee_id = manager_id
START WiTH manager_id iS null ORDER BY LEVEL;


