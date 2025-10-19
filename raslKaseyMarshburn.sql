Use raslKaseyMarshburn;

-- Contraint
ALTER TABLE player ADD CONSTRAINT age_check CHECK (player_age >=18);

-- A Creating figure 1
Select match_date as 'Match Date', Match_Start_Time as 'Match Start Time', Field_Park as 'Park', Field_fieldnum as 'Field#', Field_name as 'Field Name', Home_Team_name as 'Home Team Name', Away_Team_Name as 'Away Team Name', Ref, Match_Score as 'Match Score', Winner
From raslKaseyMarshburn.Match, Field
where field_Park = Park;

-- B Creating Figure 2
Select Team_Team_Name as 'Team Name', Player_name as 'Player Name', position, Player_jersey as 'Jersey #'
From Player
limit 22;

-- C Showing the oldest and youngest players in the league 
(Select player_name as ' Player Name', Player_age as 'Age'
from player
Order by Age desc
limit 1)
Union all
(Select player_name as 'player name', player_age as 'Age'
From player 
Order by Age ASC
limit 1);

-- D All the stats for the players Summed per player
Select sum(Player_Goals) as 'Player Goals', sum(Player_possession) as 'Player possession', Sum(Pass_counts) as 'Pass Counts', sum(Passing_chains) as 'Passing Chains', sum(assists), sum(shots_on_goal) as 'Shots on Goal', sum(PT) as 'Play Time', Player_player_ID
From Stats
Group by player_player_id;

-- E Which Player had the most assists this season
Select Assists, Player_Name
from Stats inner join player
on Player_Player_ID = Player_ID
Order by Assists desc
Limit 1;

-- F The team who won the most matches and their average score
(Select Match_ID, winner, AVG(match_score) as 'Average Score'
from raslKaseyMarshburn.Match
group by Match_ID,winner
order by Match_score desc
limit 2)
union all
(Select Match_Id, winner, Avg(match_score) as 'Average score'
From raslKaseyMarshburn.Match
Where Match_ID = 8
Group by Match_Id, winner);

-- G The head coach who won the most matches
Select Headcoach_coach_name as 'Head Coach', Team_Name as 'Team Name'
From Team
where Team_name = 'Bulls';

-- H How many days have past since the final match of rasl
Select Datediff('2025-11-08','2025-03-20') days;
-- Assuming the date is exactly the same as this assignment but it was based in 2025

-- I
-- How many players are female?
Select player_name as 'Player Name', Player_Gender as 'Player Gender'
From Player
Where Player_Gender in
(Select Player_Gender 
From Player
Where Player_Gender = 'F');

-- J
-- Who is the oldest head coach and what is their team, and gender?
Select Coach_Name as 'Coach Name', Coach_age as 'Coach Age', coach_Gender as 'Coach Gender', team_Name as 'Team Name'
From Headcoach inner join Team
where Coach_name = HeadCoach_Coach_Name
order by Coach_age Desc
Limit 1;





