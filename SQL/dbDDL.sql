-- Create tables
CREATE TABLE CONFERENCE (
                            Conference_ID INT PRIMARY KEY,
                            Name VARCHAR(100),
                            Location VARCHAR(100)
);

CREATE TABLE DIVISION (
                          Division_ID INT PRIMARY KEY,
                          Conference_ID INT,
                          Name VARCHAR(100),
                          Location VARCHAR(100),
                          FOREIGN KEY (Conference_ID) REFERENCES CONFERENCE(Conference_ID)
);

CREATE TABLE TEAM (
                      Team_ID INT PRIMARY KEY,
                      Division_ID INT,
                      Name VARCHAR(100),
                      Location VARCHAR(100),
                      FOREIGN KEY (Division_ID) REFERENCES DIVISION(Division_ID)
);

CREATE TABLE PLAYER (
                        Player_ID INT PRIMARY KEY,
                        Team_ID INT,
                        Name VARCHAR(100),
                        Position VARCHAR(50),
                        FOREIGN KEY (Team_ID) REFERENCES TEAM(Team_ID)
);

CREATE TABLE STATS (
                       Stats_ID INT PRIMARY KEY,
                       Player_ID INT,
                       Week INT,
                       PassingYds INT,
                       PassingTds INT,
                       PassingInt INT,
                       RushingYds INT,
                       RushingTd INT,
                       ReceivingYds INT,
                       ReceivingTd INT,
                       FPTS_per_game FLOAT,
                       Total_FPTS FLOAT,
                       FOREIGN KEY (Player_ID) REFERENCES PLAYER(Player_ID)
);

-- Create indexes
CREATE INDEX idx_Player_ID ON STATS (Player_ID);
CREATE INDEX idx_Week ON STATS (Week);

-- Create views
CREATE VIEW Player_Stats AS
SELECT
    p.Name AS Player_Name,
    t.Name AS Team_Name,
    d.Name AS Division_Name,
    c.Name AS Conference_Name,
    s.Week,
    s.PassingYds,
    s.PassingTds,
    s.PassingInt,
    s.RushingYds,
    s.RushingTd,
    s.ReceivingYds,
    s.ReceivingTd,
    s.FPTS_per_game,
    s.Total_FPTS
FROM
    STATS s
        JOIN
    PLAYER p ON s.Player_ID = p.Player_ID
        JOIN
    TEAM t ON p.Team_ID = t.Team_ID
        JOIN
    DIVISION d ON t.Division_ID = d.Division_ID
        JOIN
    CONFERENCE c ON d.Conference_ID = c.Conference_ID;