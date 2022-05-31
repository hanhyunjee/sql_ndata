SELECT*FROM employees;

SELECT employee_id, email FROM employees;

SELECT employee_id, first_name, last_name 
FROM employees 
ORDER by employee_id DESC;


SELECT DISTINCT job_id from employees;


SELECT employee_id as 사원번호, first_name as 이름, last_name as 성
FROM employees;


SELECT employee_id, first_name||last_name 
FROM employees;

SELECT employee_id, first_name||' '||last_name,
email||'@company.com'
FROM employees;


SELECT employee_id, salary, salary+500, salary-100 ,(salary*1.1)/2
FROM employees;

SELECT employee_id as 사원번호,
       salary as 급여, 
       salary+500 as 추가급여, 
       salary-100 as 인하급여,
       (salary*1.1)/2 as 조정급여
FROM employees;

SELECT * FROM employees Where employee_id = 100;

SELECT * FROM employees Where first_name = 'David';

SELECT * FROM employees Where employee_id >= 105;

SELECT * FROM employees Where salary  between 10000 AND 20000;

SELECT * FROM employees WHERE job_id LIKE 'AD___';

SELECT * FROM employees Where salary in(10000, 17000, 24000);

SELECT * FROM employees Where job_id LIKE 'AD%';

SELECT * FROM employees WHERE manager_id IS NULL;

SELECT * FROM employees WHERE salary > 400 AND job_id = 'IT_PROG'; 

SELECT * FROM employees WHERE salary > 400 AND job_id = 'IT_PROG' OR job_id ='FI_ACCOUNT';

SELECT * FROM employees WHERE employee_id <> 105;

SELECT * FROM employees WHERE manager_id is not null;

SELECT last_name, lower(LAST_name) lower적용, upper(last_name) upper적용, email, INITCAP(email) INITCAP적용 from employees;

SELECT job_id, substr(job_id, 1, 2)적용결과 FROM employees;

SELECT job_id, REPLACE(job_id, 'ACCOUNT', 'ACCNT')적용결과 FROM employees;

SELECT first_name, LPAD(first_name, 12,'*') FROM employees; 