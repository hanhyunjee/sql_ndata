SELECT A.PLAYER_NAME AS 선수명, A.BACK_NO AS백넘버,
        B.REGION_NAME AS 연고지, B.TEAM_NAME AS 팀명
FROM PLAYER A, TEAM B
WHERE A.POSITION = 'GK'
AND B.TEAM_ID=A.TEAM_ID
ORDER BY A.BACK_NO;

SELECT *
from salgrade;


SELECT A.PLAYER_NAME AS 선수명, A.POSITION AS 포지션,
        B. REGION_NAME AS 연고지, B.TEAM_NAME AS 팀명,
        C.STADIUM_NAME AS 구장명
    FROM PLAYER A, TEAM B, STADIUM C
    WHERE B.TEAM_ID=A.TEAM_ID
    AND C.STADIUM_ID=B.STADIUM_ID
ORDER BY 선수명;

