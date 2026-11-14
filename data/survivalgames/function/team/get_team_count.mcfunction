#
#   Get Team Count
#   
#   Purpose: To save the size of the team '$temp.target_team survivalgames.team.id' to the score '$temp.team_size survivalgames.team.id'
#
#   Input: None
#


scoreboard players set $temp.team_size survivalgames.team.id 0

execute as @a if score @s survivalgames.team.id = $temp.target_team survivalgames.team.id run scoreboard players add $temp.team_size survivalgames.team.id 1

