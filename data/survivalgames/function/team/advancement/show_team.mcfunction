#
#   Show team
#   
#   Purpose: To show+display this player's team
#
#   Input: None
#


function survivalgames:team/team_players/display_team

function survivalgames:team/group_team
tag @s remove survivalgames.team.grouped
execute as @a[tag=survivalgames.team.grouped] at @s run particle minecraft:glow ~ ~1 ~ 0.3 0.5 0.3 1 200 force

advancement revoke @s only survivalgames:team/show_team
scoreboard players reset @s invite_player
scoreboard players enable @s invite_player

