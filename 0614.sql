SELECT player_name as ������, position as ������, NVL(position,'����')as nl������
    FROM player
WHERE TEAM_ID='K08';



SELECT player_name ������, position AS ������,
        CASE
            WHEN POSITION IS NULL THEN '����'
            ELSE POSITION
        END AS NL������
FROM PLAYER
WHERE TEAM_ID = 'K08';

SELECT ENAME AS �����, SAL AS ����, COMM  AS Ŀ�̼�,
    (SAL*12)+COMM AS ����A,(SAL*12)+NVL(COMM,0) AS ����B
FROM EMP;