A chess tournament is being held which consists of several matches between a player and a computer. After every match one player is declared as the winner.

You are given two tables, One table consists of the players that will be playing the tournament while the other table consists of the matches that will be played in the tournament and its Result. The Result would be 1 if the player won the match, 0 otherwise. You have to output the names of the players who have won atleast one match and lost atmost one match.

SELECT p.Name
FROM Players p
JOIN Matches m ON p.Id = m.Id
GROUP BY p.Id, p.Name
HAVING 
    SUM(CASE WHEN m.Result = 1 THEN 1 ELSE 0 END) >= 1
    AND
    SUM(CASE WHEN m.Result = 0 THEN 1 ELSE 0 END) <= 1;
