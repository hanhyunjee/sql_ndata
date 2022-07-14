-- ��� �̸��� SCOTT �ܾ ���� ������ ��� // ���Ե��̳�, �����̳� ����
-- UPPER �Լ��� ���ڿ� ��
SELECT * 
    FROM emp 
    WHERE UPPER(ename) = UPPER('scott');

-- ��� �̸��� SCOTT �ܾ ���Ե� ������ ��� // ���Ե��̳�, �����̳� ����
-- UPPER �Լ��� ���ڿ� ��
SELECT * 
    FROM emp 
    WHERE UPPER(ename) LIKE UPPER('%scott');
    
-- ����� �̸� ���̰� 5���� �̻��� �� ���
SELECT ename, LENGTH(ename) 
    FROM emp 
    WHERE LENGTH(ename) >= 5;

-- �ѱ��� ��� ���ڴ����� ����Ʈ ������ �ִ�.
-- LENGTH = ���ڴ����� ǥ�� / LENGTHB = ����Ʈ ������ ǥ��
-- LENGTH�� ����ϴ°� ����
SELECT LENGTH('�ѱ�'), LENGTHB('�ѱ�') FROM dual;

-- �̸� ������ �Ϻθ� �����ϰ��� �Ѵ�
-- 1. ó������ 2���� ����
-- 2. 3��°�������� 2���� ����
-- 3. 5��° ���ڸ� ����
-- SUBSTR : ���ڿ� �Ϻ� �����Լ�
SELECT ename, SUBSTR(ename, 1, 2), SUBSTR(ename, 3, 2), SUBSTR(ename, 5) FROM emp;

-- Ư�����ڿ� ã��
-- ���ڿ� ������ �ȿ��� Ư�� ���� ��ġ�� ã���Լ� INSTR
SELECT INSTR('HELLO ORACLE!', 'L') AS INSTR_1, 
       INSTR('HELLO ORACLE!', 'L', 5) AS INSTR_2,
       INSTR('HELLO ORACLE!', 'L', 2, 2) AS INSTR_3
FROM dual;

-- Ư�� ���ڿ� �ٲٱ�
-- Ư�����ڸ� �ٸ����ڷ� �ٲٴ� REPLACE �Լ�   
SELECT '010-1234-5678' AS REPLACE_BEFORE,
       REPLACE('010-1234-5678', '-', ' ') AS REPLACE_1,
       REPLACE('010-1234-5678', '-') AS REPLACE_2
FROM dual;    
    
-- Ư�� ���ڿ� ä���
-- �������� �� ������ Ư�� ���ڷ� ä��� LPAD, RPAD �Լ�
-- RPAD�� �������� ���ڸ� *�� ǥ�� ���
SELECT RPAD('971225-', 14, '*') AS RPAD_JMNO,
       RPAD('010-1234-', 13, '*') AS RPAD_PHONE 
FROM dual;

-- �� �� ���̿� : �ְ� ����
-- �� ���ڿ��� ��ġ�� CONCAT �Լ�
SELECT CONCAT(empno, ename),
       CONCAT(empno, CONCAT(' : ', ename))
FROM emp
WHERE ename = 'SCOTT';

-- TRIM �Լ��� ���� ����
-- Ư�����ڸ� ����� TRIM,LTRIM,RTRIM �Լ�
SELECT '[' || TRIM(' _Oracle_ ') || ']' AS TRIM,
       '[' || LTRIM(' _Oracle_ ') || ']' AS LTRIM,
       '[' || LTRIM('<_Oracle_>', '_<') || ']' AS LTRIM_2,
       '[' || RTRIM(' _Oracle_ ') || ']' AS RTRIM,
       '[' || RTRIM('<_Oracle_>', '>_') || ']' AS RTRIM_2
FROM dual;

-- ���ڿ� ���õ� �Լ�
-- TRUNC : Ư�� ��ġ���� ������ ��
-- CEIL : ������ ���ں��� ū ���� �� ���� ���� ����(������ ���ڿ� ����� ������ ã�´�)
-- FLOOR : ������ ���ں��� ū ���� �� ���� ū ����
-- MOD : ���ڸ� ���� ������ ���� ���Ѵ�

-- Ư�� ��ġ���� �ݿø��ϴ� ROUND �Լ�
SELECT ROUND(1234.5678) AS ROUND,
       ROUND(1234.5678, 0) AS ROUND_0,
       ROUND(1234.5678, 1) AS ROUND_1,
       ROUND(1234.5678, 2) AS ROUND_2,
       ROUND(1234.5678, -1) AS ROUND_MINUS1,
       ROUND(1234.5678, -2) AS ROUND_MINUS2
FROM dual;
  
-- ��¥ ǥ��
SELECT SYSDATE AS NOW,
       SYSDATE-1 AS YESTERDAY,
       SYSDATE+1 AS TOMORROW
FROM dual;

-- 3���� �� �� ¥ ǥ��
SELECT SYSDATE,
       ADD_MONTHS(SYSDATE, 3)
FROM dual;

-- �Ի� 10�ֳ��� �Ǵ� ������� ������ ���
SELECT empno, ename, hiredate,
       ADD_MONTHS(hiredate, 120) AS WORK10YEAR
FROM emp;

-- ������ ��¥�� �ð� ���
-- ��¥, ���� �����͸� ���� �����ͷ� ��ȯ�ϴ� TO_CHAR �Լ�
SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD HH24:MI:SS') AS ���糯¥�ð�
FROM dual;

-- ���� ������ �پ��� ����
SELECT SYSDATE,
       TO_CHAR(SYSDATE, 'MM') AS MM,
       TO_CHAR(SYSDATE, 'MON') AS MON,
       TO_CHAR(SYSDATE, 'MONTH') AS MONTH,
       TO_CHAR(SYSDATE, 'DD') AS DD,
       TO_CHAR(SYSDATE, 'DY') AS DY,
       TO_CHAR(SYSDATE, 'DAY') AS DAY
FROM dual;

commit;