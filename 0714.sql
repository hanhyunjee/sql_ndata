SELECT LENGTH('한글'), LENGTHB('한글')
FROM DUAL;

SELECT LENGTHB(CONVERT('한글', 'KO16MSWIN949')) AS LENGTHB_1,
        LENGTHB(CONVERT('한글 HANGUL', 'KO16MSWIN949')) AS LENGTHB_2
FROM DUAL;


-- 날짜 표시 형식
-- 여러 언어로 날짜(월) 출력 -> 홈페이지 다국어 지원

SELECT SYSDATE,
    to_char(sysdate, 'MM') AS MM,
    to_char(sysdate, 'MON', 'NLS_DATE_LANGUAGE=KOREAN') AS MON_KOR,
    to_char(sysdate, 'MON', 'NLS_DATE_LANGUAGE=JAPANESE') AS MON_JPN,
    to_char(sysdate, 'MON', 'NLS_DATE_LANGUAGE=ENGLISH') AS MON_ENG,
    to_char(sysdate, 'MON', 'NLS_DATE_LANGUAGE=KOREAN') AS MONTH_KOR,
    to_char(sysdate, 'MON', 'NLS_DATE_LANGUAGE=JAPANESE') AS MONTH_JPN,
    to_char(sysdate, 'MON', 'NLS_DATE_LANGUAGE=ENGLISH') AS MONTH_ENG
FROM DUAL;

-- 여러가지 숫자 형식 사용하여 급여 출력하기
SELECT SAL,
    TO_CHAR(SAL, '$999,999') AS SAL_$,
    TO_CHAR(SAL, 'L999,999') AS SAL_L,
    TO_CHAR(SAL, '999,999.00') AS SAL_1,
    TO_CHAR(SAL, '000999999.99') AS SAL_2
FROM EMP;