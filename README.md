# Raleigh-Soccer-League
MySQL Database Project
Use Case:
Raleigh Adult Soccer League (RASL) is a hypothetical adult-based outdoor soccer league based in Raleigh, NC. The league boasts of 12 current teams, each with at least 11 players, playing a spring and fall season each year. The league director has been keeping data in text-based documents (e.g., MS Word or Google Sheets) but is finding it increasingly difficult to get insights from the data. Thus, the league has decided to build a database to support its operations. You will design and build a relational database for the league using the information below:

Each team is coached by one head coach and one assistant coach (optional). A coach is assigned to one team only. Coaches are tracked by their full name, age, and gender. For example, Fred Lasso is the Head coach of the Ranchers, while the Assistant coach is Red Beard. 

Players enroll in the league in the spring of each year and are assigned to play on only one team. Each player on a team is assigned a jersey with a unique number for that team. Players must include their full name, age, and gender when they enroll. Players must be at least 18 years of age to be accepted in the league. One player on each team is assigned as the captain.

Matches are 90 minutes in length and are played between two teams under the control of a referee (ref). If the match ends in a tie, the teams will play two extra times of 15 minutes or go directly to penalty kicks so that a match winner is established. The score of the match is tracked. Teams play matches on a field of a Raleigh soccer park. Most of the soccer parks house several fields, and a field can host several matches over time. 

The coach decides the roster (which players play which positions, Figure 2) before the match and ensures that stats are tracked. Typical positions on a team include Goalkeeper, Forwards (Striker, Center Forward, Wingers), Midfielders (Mid, Right Mid, Center Mid, Attacking Mid, Defensive Mid), and Defenders (Center back, Left Back, Right Back, and Wing Backs). Some of the most-commonly tracked player stats include player goals, assists, possession %, pass counts, and passing chains. For example, in the first match of the season, Denise Stacker scored 3 goals and had 2 assists.

A season schedule exists for all the teams. A match schedule for the day could look like the following (Figure 1) with the match score and winner filled in after the match concludes.
<img width="471" height="337" alt="image" src="https://github.com/user-attachments/assets/9aab6900-2c0f-462b-888b-7fcce8aafcdd" />
