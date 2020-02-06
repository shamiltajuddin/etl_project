drop table if exists player_stats;
drop table if exists player_salary;

-- Create tables for raw data to be loaded into
CREATE TABLE player_stats (
player TEXT PRIMARY KEY,
gp INT,
fg_percent INT,
ppg INT
);

CREATE TABLE player_salary (
player TEXT PRIMARY KEY,
salary INT
);

-- Join Tables
SELECT player_stats.player, player_stats.gp, player_stats.fg_percent, player_stats.ppg, player_salary.player,player_salary.salary
FROM player_stats
JOIN player_salary
ON player_stats.player = player_salary.player;
