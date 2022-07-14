-- 사원 이름에 SCOTT 단어가 같은 데이터 출력 // 포함된이냐, 같은이냐 주의
-- UPPER 함수로 문자열 비교
SELECT * 
    FROM emp 
    WHERE UPPER(ename) = UPPER('scott');

-- 사원 이름에 SCOTT 단어가 포함된 데이터 출력 // 포함된이냐, 같은이냐 주의
-- UPPER 함수로 문자열 비교
SELECT * 
    FROM emp 
    WHERE UPPER(ename) LIKE UPPER('%scott');
    
-- 사원의 이름 길이가 5글자 이상인 행 출력
SELECT ename, LENGTH(ename) 
    FROM emp 
    WHERE LENGTH(ename) >= 5;

-- 한글의 경우 글자단위와 바이트 단위가 있다.
-- LENGTH = 글자단위로 표현 / LENGTHB = 바이트 단위로 표현
-- LENGTH를 사용하는게 좋다
SELECT LENGTH('한글'), LENGTHB('한글') FROM dual;

-- 이름 글자의 일부를 추출하고자 한다
-- 1. 처음부터 2글자 추출
-- 2. 3번째에서부터 2글자 추출
-- 3. 5번째 글자만 추출
-- SUBSTR : 문자열 일부 추출함수
SELECT ename, SUBSTR(ename, 1, 2), SUBSTR(ename, 3, 2), SUBSTR(ename, 5) FROM emp;

-- 특정문자열 찾기
-- 문자열 데이터 안에서 특정 문자 위치를 찾는함수 INSTR
SELECT INSTR('HELLO ORACLE!', 'L') AS INSTR_1, 
       INSTR('HELLO ORACLE!', 'L', 5) AS INSTR_2,
       INSTR('HELLO ORACLE!', 'L', 2, 2) AS INSTR_3
FROM dual;

-- 특정 문자열 바꾸기
-- 특정문자를 다른문자로 바꾸는 REPLACE 함수   
SELECT '010-1234-5678' AS REPLACE_BEFORE,
       REPLACE('010-1234-5678', '-', ' ') AS REPLACE_1,
       REPLACE('010-1234-5678', '-') AS REPLACE_2
FROM dual;    
    
-- 특정 문자열 채우기
-- 데이터의 빈 공간을 특정 문자로 채우는 LPAD, RPAD 함수
-- RPAD로 개인정보 뒷자리 *로 표시 출력
SELECT RPAD('971225-', 14, '*') AS RPAD_JMNO,
       RPAD('010-1234-', 13, '*') AS RPAD_PHONE 
FROM dual;

-- 두 열 사이에 : 넣고 연결
-- 두 문자열을 합치는 CONCAT 함수
SELECT CONCAT(empno, ename),
       CONCAT(empno, CONCAT(' : ', ename))
FROM emp
WHERE ename = 'SCOTT';

-- TRIM 함수로 공백 제거
-- 특정문자를 지우는 TRIM,LTRIM,RTRIM 함수
SELECT '[' || TRIM(' _Oracle_ ') || ']' AS TRIM,
       '[' || LTRIM(' _Oracle_ ') || ']' AS LTRIM,
       '[' || LTRIM('<_Oracle_>', '_<') || ']' AS LTRIM_2,
       '[' || RTRIM(' _Oracle_ ') || ']' AS RTRIM,
       '[' || RTRIM('<_Oracle_>', '>_') || ']' AS RTRIM_2
FROM dual;

-- 숫자와 관련된 함수
-- TRUNC : 특정 위치에서 버림한 값
-- CEIL : 지정된 숫자보다 큰 정수 중 가작 작은 정수(지정한 숫자와 가까운 정수를 찾는다)
-- FLOOR : 지정된 숫자보다 큰 정수 중 가장 큰 정수
-- MOD : 숫자를 나눈 나머지 값을 구한다

-- 특정 위치에서 반올림하는 ROUND 함수
SELECT ROUND(1234.5678) AS ROUND,
       ROUND(1234.5678, 0) AS ROUND_0,
       ROUND(1234.5678, 1) AS ROUND_1,
       ROUND(1234.5678, 2) AS ROUND_2,
       ROUND(1234.5678, -1) AS ROUND_MINUS1,
       ROUND(1234.5678, -2) AS ROUND_MINUS2
FROM dual;
  
-- 날짜 표시
SELECT SYSDATE AS NOW,
       SYSDATE-1 AS YESTERDAY,
       SYSDATE+1 AS TOMORROW
FROM dual;

-- 3개월 후 날 짜 표시
SELECT SYSDATE,
       ADD_MONTHS(SYSDATE, 3)
FROM dual;

-- 입사 10주년이 되는 사원들의 데이터 출력
SELECT empno, ename, hiredate,
       ADD_MONTHS(hiredate, 120) AS WORK10YEAR
FROM emp;

-- 현재의 날짜와 시간 출력
-- 날짜, 숫자 데이터를 문자 데이터로 변환하는 TO_CHAR 함수
SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD HH24:MI:SS') AS 현재날짜시간
FROM dual;

-- 월과 요일의 다양한 형식
SELECT SYSDATE,
       TO_CHAR(SYSDATE, 'MM') AS MM,
       TO_CHAR(SYSDATE, 'MON') AS MON,
       TO_CHAR(SYSDATE, 'MONTH') AS MONTH,
       TO_CHAR(SYSDATE, 'DD') AS DD,
       TO_CHAR(SYSDATE, 'DY') AS DY,
       TO_CHAR(SYSDATE, 'DAY') AS DAY
FROM dual;

commit;