--테이블 확인
SELECT * FROM emp;
SELECT * FROM dept;

--emp 테이블에서 사원번호, 이름, 사원의 소속 부서 번호만 조회
SELECT empno,ename,deptno FROM emp;

--emp 테이블의 부서 번호 종류를 확인
SELECT DISTINCT deptno FROM emp;

--곱하기를 사용하지 않고 사원의 연간 총 수입 출력
SELECT ename,sal, sal*12+comm as 연수입 FROM emp;

--급여 기준으로 내림차순 정렬
SELECT ename,sal FROM emp order by sal desc;

--emp 테이블의 전체 열을 부서번호(오름차순)와 급여(내림차순)로 정렬
SELECT ename,sal, deptno FROM emp order by deptno ASC, sal desc;

--부서번호가 30인 직원만 출력
SELECT * FROM emp WHERE deptno = 30;

--사원번호가 7900인 직원만 출력
SELECT * FROM emp WHERE empno=7900;

--부서번호가 30이면서 job이 CLERK인 직원
SELECT * FROM emp WHERE deptno=30 AND job='CLERK';

--급여 열에 12를 곱한 값이 36000인 직원들만 출력
SELECT * FROM emp WHERE sal*12=36000;

--ename이 F보다 작거나 같은 직원을 출력(첫문자가 F이면서 대문자)
SELECT * FROM emp WHERE ename <='F';

SELECT * FROM emp WHERE sal !=3000;

SELECT * FROM emp WHERE sal <>3000;

SELECT * FROM emp WHERE sal ^=3000;

SELECT * FROM emp WHERE NOT sal=3000;

--다음의 코드를 짧게 줄여서 표시
SELECT * FROM emp
WHERE job = 'MANAGER'
    OR job = 'SALESMAN'
    OR job = 'CLERK';

SELECT * FROM emp
WHERE job in('MANAGER', 'SALESMAN', 'CLERK');

--급여값이 2000이상 3000이하 조회
SELECT * FROM emp
WHERE SAL >= 2000
    AND SAL <=3000;
    
SELECT * FROM emp
WHERE SAL BETWEEN 2000 AND 3000;


--ename이 S로 시작하는 데이터만 출력
SELECT * FROM emp
WHERE ename Like 'S%';

--ename의 두 번째 글자가 L인 사원만 출력
SELECT * FROM emp
WHERE ename Like '_L%';

--사원 이름에 AM이 포함된 사원 데이터만 출력
SELECT * FROM emp
WHERE ename Like '%AM%';

--NULL에 대한 오류 해결
SELECT * FROM emp
WHERE comm = NULL;

SELECT * FROM emp
WHERE comm IS NULL;

--UNION (집합연산자) - 중복제거
--UNION ALL - 중복가능
--MINUS
--INTERSECT
SELECT empno, ename, sal, deptno
FROM emp
wHERE deptno = 10
UNION
SELECT empno, ename, sal, deptno
FROM emp
WHERE deptno = 20;


--사원 이름을 대문자, 소문자, 첫 글자 대문자로 출력
SELECT ename, UPPER(ename), LOWER(ename), INITCAP(ename) FROM emp; 

--사원이름에 SCOTT 단어가 포함된 데이터 출력
