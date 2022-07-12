--���̺� Ȯ��
SELECT * FROM emp;
SELECT * FROM dept;

--emp ���̺��� �����ȣ, �̸�, ����� �Ҽ� �μ� ��ȣ�� ��ȸ
SELECT empno,ename,deptno FROM emp;

--emp ���̺��� �μ� ��ȣ ������ Ȯ��
SELECT DISTINCT deptno FROM emp;

--���ϱ⸦ ������� �ʰ� ����� ���� �� ���� ���
SELECT ename,sal, sal*12+comm as ������ FROM emp;

--�޿� �������� �������� ����
SELECT ename,sal FROM emp order by sal desc;

--emp ���̺��� ��ü ���� �μ���ȣ(��������)�� �޿�(��������)�� ����
SELECT ename,sal, deptno FROM emp order by deptno ASC, sal desc;

--�μ���ȣ�� 30�� ������ ���
SELECT * FROM emp WHERE deptno = 30;

--�����ȣ�� 7900�� ������ ���
SELECT * FROM emp WHERE empno=7900;

--�μ���ȣ�� 30�̸鼭 job�� CLERK�� ����
SELECT * FROM emp WHERE deptno=30 AND job='CLERK';

--�޿� ���� 12�� ���� ���� 36000�� �����鸸 ���
SELECT * FROM emp WHERE sal*12=36000;

--ename�� F���� �۰ų� ���� ������ ���(ù���ڰ� F�̸鼭 �빮��)
SELECT * FROM emp WHERE ename <='F';

SELECT * FROM emp WHERE sal !=3000;

SELECT * FROM emp WHERE sal <>3000;

SELECT * FROM emp WHERE sal ^=3000;

SELECT * FROM emp WHERE NOT sal=3000;

--������ �ڵ带 ª�� �ٿ��� ǥ��
SELECT * FROM emp
WHERE job = 'MANAGER'
    OR job = 'SALESMAN'
    OR job = 'CLERK';

SELECT * FROM emp
WHERE job in('MANAGER', 'SALESMAN', 'CLERK');

--�޿����� 2000�̻� 3000���� ��ȸ
SELECT * FROM emp
WHERE SAL >= 2000
    AND SAL <=3000;
    
SELECT * FROM emp
WHERE SAL BETWEEN 2000 AND 3000;


--ename�� S�� �����ϴ� �����͸� ���
SELECT * FROM emp
WHERE ename Like 'S%';

--ename�� �� ��° ���ڰ� L�� ����� ���
SELECT * FROM emp
WHERE ename Like '_L%';

--��� �̸��� AM�� ���Ե� ��� �����͸� ���
SELECT * FROM emp
WHERE ename Like '%AM%';

--NULL�� ���� ���� �ذ�
SELECT * FROM emp
WHERE comm = NULL;

SELECT * FROM emp
WHERE comm IS NULL;

--UNION (���տ�����) - �ߺ�����
--UNION ALL - �ߺ�����
--MINUS
--INTERSECT
SELECT empno, ename, sal, deptno
FROM emp
wHERE deptno = 10
UNION
SELECT empno, ename, sal, deptno
FROM emp
WHERE deptno = 20;


--��� �̸��� �빮��, �ҹ���, ù ���� �빮�ڷ� ���
SELECT ename, UPPER(ename), LOWER(ename), INITCAP(ename) FROM emp; 

--����̸��� SCOTT �ܾ ���Ե� ������ ���
