#
#   Leave team
#   
#   Purpose: To leave this team
#
#   Input: None
#


function survivalgames:team/leave_team

advancement revoke @s only survivalgames:team/leave_team
scoreboard players reset @s invite_player
scoreboard players enable @s invite_player

