#
#   Group Team
#   
#   Purpose: To assign all players in this player's team with the same tag
#
#   Input: None
#


tag @s add survivalgames.team.temp

execute as @a if score @s survivalgames.team.id = @p[tag=survivalgames.team.temp] survivalgames.team.id run tag @s add survivalgames.team.grouped

tag @s remove survivalgames.team.temp

