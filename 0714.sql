SELECT LENGTH('�ѱ�'), LENGTHB('�ѱ�')
FROM DUAL;

SELECT LENGTHB(CONVERT('�ѱ�', 'KO16MSWIN949')) AS LENGTHB_1,
        LENGTHB(CONVERT('�ѱ� HANGUL', 'KO16MSWIN949')) AS LENGTHB_2
FROM DUAL;


-- ��¥ ǥ�� ����
-- ���� ���� ��¥(��) ��� -> Ȩ������ �ٱ��� ����

SELECT SYSDATE,
    to_char(sysdate, 'MM') AS MM,
    to_char(sysdate, 'MON', 'NLS_DATE_LANGUAGE=KOREAN') AS MON_KOR,
    to_char(sysdate, 'MON', 'NLS_DATE_LANGUAGE=JAPANESE') AS MON_JPN,
    to_char(sysdate, 'MON', 'NLS_DATE_LANGUAGE=ENGLISH') AS MON_ENG,
    to_char(sysdate, 'MON', 'NLS_DATE_LANGUAGE=KOREAN') AS MONTH_KOR,
    to_char(sysdate, 'MON', 'NLS_DATE_LANGUAGE=JAPANESE') AS MONTH_JPN,
    to_char(sysdate, 'MON', 'NLS_DATE_LANGUAGE=ENGLISH') AS MONTH_ENG
FROM DUAL;

-- �������� ���� ���� ����Ͽ� �޿� ����ϱ�
SELECT SAL,
    TO_CHAR(SAL, '$999,999') AS SAL_$,
    TO_CHAR(SAL, 'L999,999') AS SAL_L,
    TO_CHAR(SAL, '999,999.00') AS SAL_1,
    TO_CHAR(SAL, '000999999.99') AS SAL_2
FROM EMP;