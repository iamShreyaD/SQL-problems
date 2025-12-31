A tournament is being held where several matches takes place between a player from team 1 and a player from team 2. After every match one of the players is declared as the winner. However there are some players in Team2 who are known cheaters. Write an SQL Query to find the percentage of matches Won by Team1 against a non cheater from team 2 on every day. percentage of wins=(total games won against non cheaters)/(total games played against non cheaters). The percentage of wins should be rounded upto 4 decimals.

Also the name of the output coloumn should be ‘Percentage Wins’. Also the output should be order ascending order of the Dates.

SELECT 
    ROUND(
    SUM(CASE WHEN m.Result = 1 AND t2.Cheater = 0 THEN 1 ELSE 0 END)
    /
    SUM(CASE WHEN t2.Cheater = 0 THEN 1 ELSE 0 END),
    4
) AS "Percentage Wins"
FROM Team1 t1 
JOIN Matches m on t1.Id = m.PlayerId1
JOIN Team2 t2 on m.PlayerId2 = t2.Id
GROUP BY m.Date
ORDER BY m.Date ASC
;
