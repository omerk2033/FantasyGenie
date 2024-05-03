-- Query 1: List all players who scored a touchdown (TD) in week 2
SELECT p.*, t.Name AS Team_Name
FROM PLAYER p
         INNER JOIN TEAM t ON p.Team_ID = t.Team_ID
         INNER JOIN STATS s ON p.Player_ID = s.Player_ID
WHERE s.Week = 2 AND (s.PassingTds > 0 OR s.RushingTd > 0 OR s.ReceivingTd > 0);


-- Query 2: Show the average fantasy points scored by players in each division but shows where average is greater than 15.
SELECT d.Name AS Division_Name, COUNT(p.Player_ID) AS Num_Players, AVG(s.Total_FPTS) AS Avg_Fantasy_Points
FROM DIVISION d
         INNER JOIN TEAM t ON d.Division_ID = t.Division_ID
         INNER JOIN PLAYER p ON t.Team_ID = p.Team_ID
         INNER JOIN STATS s ON p.Player_ID = s.Player_ID
GROUP BY d.Name
HAVING AVG(s.Total_FPTS) > 15
ORDER BY Num_Players DESC;

-- Query 3: Display the average fantasy points per game for each player.
SELECT p.Name AS Player_Name, AVG(s.FPTS_per_game) AS Avg_Fantasy_Points_Per_Game
FROM PLAYER p
         INNER JOIN STATS s ON p.Player_ID = s.Player_ID
GROUP BY p.Name;

-- Query 4: Find all wide receivers (WR) who scored receiving touchdowns (ReceivingTd) in week 2

SELECT p.Name AS Player_Name, t.Name AS Team_Name
FROM PLAYER p
         INNER JOIN TEAM t ON p.Team_ID = t.Team_ID
         INNER JOIN STATS s ON p.Player_ID = s.Player_ID
WHERE p.Position = 'WR' AND s.Week = 2 AND s.ReceivingTd > 0;

-- Query 5: 1

SELECT p.Name AS Player_Name, t.Name AS Team_Name, s.Total_FPTS AS Fantasy_Points
FROM PLAYER p
         INNER JOIN TEAM t ON p.Team_ID = t.Team_ID
         INNER JOIN STATS s ON p.Player_ID = s.Player_ID
WHERE s.Week = 2 AND s.Total_FPTS > 300;

-- Query 6: List all running backs who scored more than 2 touchdowns.

SELECT p.Name AS Player_Name, t.Name AS Team_Name, s.RushingTd AS Rushing_Touchdowns
FROM PLAYER p
         INNER JOIN TEAM t ON p.Team_ID = t.Team_ID
         INNER JOIN STATS s ON p.Player_ID = s.Player_ID
WHERE p.Position = 'RB' AND s.RushingTd > 2;

-- Query 7: Find the wide receiver with the most receptions in the current season within the NFC South division.

SELECT p.Name AS Player_Name, t.Name AS Team_Name, s.ReceivingYds AS Receiving_Yards, s.ReceivingTd AS Receiving_Touchdowns, s.Total_FPTS AS Total_Fantasy_Points
FROM PLAYER p
         INNER JOIN TEAM t ON p.Team_ID = t.Team_ID
         INNER JOIN STATS s ON p.Player_ID = s.Player_ID
         INNER JOIN DIVISION d ON t.Division_ID = d.Division_ID
         INNER JOIN CONFERENCE c ON d.Conference_ID = c.Conference_ID
WHERE p.Position = 'WR' AND c.Name = 'NFC' AND d.Name = 'NFC South'
ORDER BY s.ReceivingYds DESC, s.ReceivingTd DESC, s.Total_FPTS DESC
    LIMIT 1;

-- Query 8: List the players who are not quarterbacks (non-QB) and scored receiving touchdowns

SELECT p.Name AS Player_Name, t.Name AS Team_Name
FROM PLAYER p
         INNER JOIN TEAM t ON p.Team_ID = t.Team_ID
         INNER JOIN STATS s ON p.Player_ID = s.Player_ID
WHERE p.Position != 'QB' AND s.Week = 2 AND s.ReceivingTd > 0;

-- Query 9: List the players who are not quarterbacks (non-QB) and scored receiving touchdowns (ReceivingTd) in week 2.

SELECT p.Name AS Player_Name, t.Name AS Team_Name
FROM PLAYER p
         INNER JOIN TEAM t ON p.Team_ID = t.Team_ID
         INNER JOIN STATS s ON p.Player_ID = s.Player_ID
WHERE s.Week = 2 AND s.RushingTd > 0 AND s.PassingTds = 0;

-- Query 10: Show the TE with the most receiving yds.
SELECT p.Name AS Player_Name, t.Name AS Team_Name, MAX(s.ReceivingYds) AS Max_Receiving_Yards
FROM PLAYER p
         INNER JOIN TEAM t ON p.Team_ID = t.Team_ID
         INNER JOIN STATS s ON p.Player_ID = s.Player_ID
WHERE p.Position = 'TE'
GROUP BY p.Name, t.Name
ORDER BY Max_Receiving_Yards DESC
    LIMIT 1;



