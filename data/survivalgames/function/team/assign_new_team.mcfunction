#
#   Assign New Team
#   
#   Purpose: To assign this player a unique team ID
#
#   Input: None
#


scoreboard players operation @s survivalgames.team.id = $next_team_id survivalgames.team.id

scoreboard players add $next_team_id survivalgames.team.id 1

