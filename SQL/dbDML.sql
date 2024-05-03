-- Populate the CONFERENCE table
INSERT INTO CONFERENCE (Conference_ID, Name, Location)
VALUES
    (1, 'AFC', 'USA'),
    (2, 'NFC', 'USA');

-- Populate the DIVISION table
INSERT INTO DIVISION (Division_ID, Conference_ID, Name, Location)
VALUES
    (1, 1, 'AFC East', 'Eastern USA'),
    (2, 1, 'AFC West', 'Western USA'),
    (3, 1, 'AFC North', 'Northern USA'),
    (4, 1, 'AFC South', 'Southern USA'),
    (5, 2, 'NFC East', 'Eastern USA'),
    (6, 2, 'NFC West', 'Western USA'),
    (7, 2, 'NFC North', 'Northern USA'),
    (8, 2, 'NFC South', 'Southern USA');

-- Populate the TEAM table
INSERT INTO TEAM (Team_ID, Division_ID, Name, Location)
VALUES
-- AFC East
(1, 1, 'New England Patriots', 'Boston, MA'),
(2, 1, 'Buffalo Bills', 'Buffalo, NY'),
(3, 1, 'Miami Dolphins', 'Miami, FL'),
(4, 1, 'New York Jets', 'New York City, NY'),
-- AFC West
(5, 2, 'Kansas City Chiefs', 'Kansas City, MO'),
(6, 2, 'Las Vegas Raiders', 'Las Vegas, NV'),
(7, 2, 'Los Angeles Chargers', 'Los Angeles, CA'),
(8, 2, 'Denver Broncos', 'Denver, CO'),
-- AFC North
(9, 3, 'Baltimore Ravens', 'Baltimore, MD'),
(10, 3, 'Pittsburgh Steelers', 'Pittsburgh, PA'),
(11, 3, 'Cleveland Browns', 'Cleveland, OH'),
(12, 3, 'Cincinnati Bengals', 'Cincinnati, OH'),
-- AFC South
(13, 4, 'Tennessee Titans', 'Nashville, TN'),
(14, 4, 'Indianapolis Colts', 'Indianapolis, IN'),
(15, 4, 'Houston Texans', 'Houston, TX'),
(16, 4, 'Jacksonville Jaguars', 'Jacksonville, FL'),
-- NFC East
(17, 5, 'Dallas Cowboys', 'Dallas, TX'),
(18, 5, 'Philadelphia Eagles', 'Philadelphia, PA'),
(19, 5, 'New York Giants', 'New York City, NY'),
(20, 5, 'Washington Football Team', 'Washington, D.C.'),
-- NFC West
(21, 6, 'San Francisco 49ers', 'San Francisco, CA'),
(22, 6, 'Seattle Seahawks', 'Seattle, WA'),
(23, 6, 'Arizona Cardinals', 'Glendale, AZ'),
(24, 6, 'Los Angeles Rams', 'Los Angeles, CA'),
-- NFC North
(25, 7, 'Green Bay Packers', 'Green Bay, WI'),
(26, 7, 'Minnesota Vikings', 'Minneapolis, MN'),
(27, 7, 'Chicago Bears', 'Chicago, IL'),
(28, 7, 'Detroit Lions', 'Detroit, MI'),
-- NFC South
(29, 8, 'Tampa Bay Buccaneers', 'Tampa, FL'),
(30, 8, 'New Orleans Saints', 'New Orleans, LA'),
(31, 8, 'Atlanta Falcons', 'Atlanta, GA'),
(32, 8, 'Carolina Panthers', 'Charlotte, NC');

-- Populate the PLAYER table
INSERT INTO PLAYER (Player_ID, Team_ID, Name, Position)
VALUES
-- New England Patriots Players
(1, 1, 'Mac Jones', 'QB'),
(2, 1, 'Ezekiel Elliot', 'RB'),
-- Buffalo Bills Players
(3, 2, 'Josh Allen', 'QB'),
(4, 2, 'Stefon Diggs', 'WR'),
-- Miami Dolphins Players
(5, 3, 'Tua Tagovailoa', 'QB'),
(6, 3, 'DeVante Parker', 'WR'),
-- New York Jets Players
(7, 4, 'Sam Darnold', 'QB'),
(8, 4, 'Jamison Crowder', 'WR'),
-- Kansas City Chiefs Players
(9, 5, 'Patrick Mahomes', 'QB'),
(10, 5, 'Tyreek Hill', 'WR'),
-- Las Vegas Raiders Players
(11, 6, 'Derek Carr', 'QB'),
(12, 6, 'Darren Waller', 'TE'),
-- Los Angeles Chargers Players
(13, 7, 'Justin Herbert', 'QB'),
(14, 7, 'Keenan Allen', 'WR'),
-- Denver Broncos Players
(15, 8, 'Drew Lock', 'QB'),
(16, 8, 'Courtland Sutton', 'WR'),
-- Baltimore Ravens Players
(17, 9, 'Lamar Jackson', 'QB'),
(18, 9, 'Marquise Brown', 'WR'),
-- Pittsburgh Steelers Players
(19, 10, 'Ben Roethlisberger', 'QB'),
(20, 10, 'JuJu Smith-Schuster', 'WR'),
-- Cleveland Browns Players
(21, 11, 'Baker Mayfield', 'QB'),
(22, 11, 'Odell Beckham Jr.', 'WR'),
-- Cincinnati Bengals Players
(23, 12, 'Joe Burrow', 'QB'),
(24, 12, 'A.J. Green', 'WR'),
-- Tennessee Titans Players
(25, 13, 'Ryan Tannehill', 'QB'),
(26, 13, 'Derrick Henry', 'RB'),
-- Indianapolis Colts Players
(27, 14, 'Philip Rivers', 'QB'),
(28, 14, 'T.Y. Hilton', 'WR'),
-- Houston Texans Players
(29, 15, 'Deshaun Watson', 'QB'),
(30, 15, 'Brandin Cooks', 'WR'),
-- Jacksonville Jaguars Players
(31, 16, 'Gardner Minshew', 'QB'),
(32, 16, 'D.J. Chark', 'WR'),
-- Dallas Cowboys Players
(33, 17, 'Dak Prescott', 'QB'),
(34, 17, 'Amari Cooper', 'WR'),
-- Philadelphia Eagles Players
(35, 18, 'Carson Wentz', 'QB'),
(36, 18, 'Zach Ertz', 'TE'),
-- New York Giants Players
(37, 19, 'Daniel Jones', 'QB'),
(38, 19, 'Saquon Barkley', 'RB'),
-- Washington Football Team Players
(39, 20, 'Alex Smith', 'QB'),
(40, 20, 'Terry McLaurin', 'WR'),
-- San Francisco 49ers Players
(41, 21, 'Jimmy Garoppolo', 'QB'),
(42, 21, 'George Kittle', 'TE'),
-- Seattle Seahawks Players
(43, 22, 'Russell Wilson', 'QB'),
(44, 22, 'D.K. Metcalf', 'WR'),
-- Arizona Cardinals Players
(45, 23, 'Kyler Murray', 'QB'),
(46, 23, 'DeAndre Hopkins', 'WR'),
-- Los Angeles Rams Players
(47, 24, 'Jared Goff', 'QB'),
(48, 24, 'Robert Woods', 'WR'),
-- Green Bay Packers Players
(49, 25, 'Aaron Rodgers', 'QB'),
(50, 25, 'Davante Adams', 'WR'),
-- Minnesota Vikings Players
(51, 26, 'Kirk Cousins', 'QB'),
(52, 26, 'Adam Thielen', 'WR'),
-- Chicago Bears Players
(53, 27, 'Mitchell Trubisky', 'QB'),
(54, 27, 'Allen Robinson', 'WR'),
-- Detroit Lions Players
(55, 28, 'Matthew Stafford', 'QB'),
(56, 28, 'Kenny Golladay', 'WR'),
-- Tampa Bay Buccaneers Players
(57, 29, 'Tom Brady', 'QB'),
(58, 29, 'Mike Evans', 'WR'),
-- New Orleans Saints Players
(59, 30, 'Drew Brees', 'QB'),
(60, 30, 'Michael Thomas', 'WR'),
-- Atlanta Falcons Players
(61, 31, 'Matt Ryan', 'QB'),
(62, 31, 'Julio Jones', 'WR'),
-- Carolina Panthers Players
(63, 32, 'Teddy Bridgewater', 'QB'),
(64, 32, 'Christian McCaffrey', 'RB');

INSERT INTO STATS (Stats_ID, Player_ID, Week, PassingYds, PassingTds, PassingInt, RushingYds, RushingTd, ReceivingYds, ReceivingTd, FPTS_per_game, Total_FPTS)
VALUES
    (66, 1, 2, 280, 2, 0, 10, 0, 0, 20, 20, 280),
    (67, 2, 2, 0, 0, 0, 0, 80, 1, 16, 16, 160),
-- Buffalo Bills Players
    (68, 3, 2, 320, 2, 1, 20, 0, 0, 24, 24, 320),
    (69, 4, 2, 0, 0, 0, 0, 90, 1, 16, 16, 160),
-- Miami Dolphins Players
    (70, 5, 2, 300, 1, 1, 30, 0, 0, 21, 21, 300),
    (71, 6, 2, 0, 0, 0, 0, 70, 1, 15, 15, 150),
-- New York Jets Players
    (72, 7, 2, 260, 2, 0, 10, 0, 0, 19, 19, 260),
    (73, 8, 2, 0, 0, 0, 0, 50, 1, 12, 12, 120),
-- Kansas City Chiefs Players
    (74, 9, 2, 330, 3, 0, 20, 0, 0, 25, 25, 330),
    (75, 10, 2, 0, 0, 0, 0, 80, 1, 16, 16, 160),
-- Las Vegas Raiders Players
    (76, 11, 2, 300, 2, 0, 10, 0, 0, 20, 20, 300),
    (77, 12, 2, 0, 0, 0, 0, 60, 1, 15, 15, 150),
-- Los Angeles Chargers Players
    (78, 13, 2, 340, 2, 0, 30, 0, 0, 23, 23, 340),
    (79, 14, 2, 0, 0, 0, 0, 90, 1, 16, 16, 160),
-- Denver Broncos Players
    (80, 15, 2, 270, 1, 1, 25, 0, 0, 18, 18, 270),
    (81, 16, 2, 0, 0, 0, 0, 70, 1, 15, 15, 150),
-- Baltimore Ravens Players
    (82, 17, 2, 310, 3, 0, 10, 0, 0, 24, 24, 310),
    (83, 18, 2, 0, 0, 0, 0, 50, 1, 12, 12, 120),
-- Pittsburgh Steelers Players
    (84, 19, 2, 280, 2, 0, 5, 0, 0, 20, 20, 280),
    (85, 20, 2, 0, 0, 0, 0, 70, 1, 15, 15, 150),
-- Cleveland Browns Players
    (86, 21, 2, 320, 3, 1, 20, 0, 0, 25, 25, 320),
    (87, 22, 2, 0, 0, 0, 0, 80, 1, 16, 16, 160),
-- Cincinnati Bengals Players
    (88, 23, 2, 290, 2, 0, 5, 0, 0, 20, 20, 290),
    (89, 24, 2, 0, 0, 0, 0, 70, 1, 15, 15, 150),
-- Tennessee Titans Players
    (90, 25, 2, 300, 2, 0, 15, 0, 0, 21, 21, 300),
    (91, 26, 2, 0, 0, 0, 0, 80, 1, 16, 16, 160),
-- Indianapolis Colts Players
    (92, 27, 2, 280, 1, 0, 10, 0, 0, 17, 17, 280),
    (93, 28, 2, 0, 0, 0, 0, 60, 1, 15, 15, 150),
-- Houston Texans Players
    (94, 29, 2, 330, 2, 1, 25, 0, 0, 23.5, 23.5, 330),
    (95, 30, 2, 0, 0, 0, 0, 70, 1, 15, 15, 150),
-- Jacksonville Jaguars Players
    (96, 31, 2, 310, 2, 0, 20, 0, 0, 21, 21, 310),
    (97, 32, 2, 0, 0, 0, 0, 50, 1, 12, 12, 120),
-- Dallas Cowboys Players
    (98, 33, 2, 340, 3, 0, 20, 0, 0, 25, 25, 340),
    (99, 34, 2, 0, 0, 0, 0, 80, 1, 16, 16, 160),
-- Philadelphia Eagles Players
    (100, 35, 2, 300, 2, 0, 15, 0, 0, 20, 20, 300),
    (101, 36, 2, 0, 0, 0, 0, 70, 1, 15, 15, 150),
-- New York Giants Players
    (102, 37, 2, 280, 2, 0, 5, 0, 0, 20, 20, 280),
    (103, 38, 2, 0, 0, 0, 0, 80, 1, 16, 16, 160),
-- Washington Football Team Players
    (104, 39, 2, 320, 3, 0, 10, 0, 0, 25, 25, 320),
    (105, 40, 2, 0, 0, 0, 0, 90, 1, 16, 16, 160),
-- San Francisco 49ers Players
    (106, 41, 2, 290, 2, 0, 10, 0, 0, 20, 20, 290),
    (107, 42, 2, 0, 0, 0, 0, 60, 1, 15, 15, 150),
-- Seattle Seahawks Players
    (108, 43, 2, 330, 2, 0, 20, 0, 0, 22, 22, 330),
    (109, 44, 2, 0, 0, 0, 0, 70, 1, 15, 15, 150),
-- Arizona Cardinals Players
    (110, 45, 2, 320, 3, 0, 5, 0, 0, 25, 25, 320),
    (111, 46, 2, 0, 0, 0, 0, 80, 1, 16, 16, 160),
-- Los Angeles Rams Players
    (112, 47, 2, 300, 2, 0, 15, 0, 0, 21, 21, 300),
    (113, 48, 2, 0, 0, 0, 0, 70, 1, 15, 15, 150),
-- Green Bay Packers Players
    (114, 49, 2, 280, 2, 0, 5, 0, 0, 20, 20, 280),
    (115, 50, 2, 0, 0, 0, 0, 80, 1, 16, 16, 160),
-- Minnesota Vikings Players
    (116, 51, 2, 330, 2, 1, 30, 0, 0, 23, 23, 330),
    (117, 52, 2, 0, 0, 0, 0, 90, 1, 16, 16, 160),
-- Chicago Bears Players
    (118, 53, 2, 300, 2, 0, 10, 0, 0, 20, 20, 300),
    (119, 54, 2, 0, 0, 0, 0, 60, 1, 15, 15, 150),
-- Detroit Lions Players
    (120, 55, 2, 280, 2, 0, 5, 0, 0, 20, 20, 280),
    (121, 56, 2, 0, 0, 0, 0, 70, 1, 15, 15, 150),
-- Tampa Bay Buccaneers Players
    (122, 57, 2, 310, 3, 0, 10, 0, 0, 23, 23, 310),
    (123, 58, 2, 0, 0, 0, 0, 80, 1, 16, 16, 160),
-- New Orleans Saints Players
    (124, 59, 2, 300, 2, 0, 15, 0, 0, 21, 21, 300),
    (125, 60, 2, 0, 0, 0, 0, 90, 1, 16, 16, 160),
-- Atlanta Falcons Players
    (126, 61, 2, 280, 2, 0, 5, 0, 0, 20, 20, 280),
    (127, 62, 2, 0, 0, 0, 0, 70, 1, 15, 15, 150),
-- Carolina Panthers Players
    (128, 63, 2, 310, 2, 0, 20, 0, 0, 21, 21, 310),
    (129, 64, 2, 0, 0, 0, 0, 80, 1, 16, 16, 160);
