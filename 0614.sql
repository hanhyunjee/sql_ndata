SELECT player_name as 선수명, position as 포지션, NVL(position,'없음')as nl포지션
    FROM player
WHERE TEAM_ID='K08';



SELECT player_name 선수명, position AS 포지션,
        CASE
            WHEN POSITION IS NULL THEN '없음'
            ELSE POSITION
        END AS NL포지션
FROM PLAYER
WHERE TEAM_ID = 'K08';

SELECT ENAME AS 사원명, SAL AS 월급, COMM  AS 커미션,
    (SAL*12)+COMM AS 연봉A,(SAL*12)+NVL(COMM,0) AS 연봉B
FROM EMP;