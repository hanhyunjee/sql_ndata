SELECT player_name 선수명, position 위치, height 키, weight 몸무게
FROM Player;

SELECT player_name 선수명, height-weight "키-몸무게"
FROM player;

SELECT player_name 선수명, round(weight/((height/100)*(height/100)),2) BMI비만지수
FROM player;

SELECT player_name ||'선수,' ||height|| 'cm,' ||WEIGHT ||'kg' 체격정보
FROM player;