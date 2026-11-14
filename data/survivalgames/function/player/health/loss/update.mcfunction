#
#   Health Update
#   
#   Purpose: To update this player's health score
#
#   Input: None
#


execute if entity @s[tag=survivalgames.player.health.loss.skip] run return run tag @s remove survivalgames.player.health.loss.skip

# tellraw @a ["U: Scoreboard Health: ", {score:{objective:"survivalgames.player.health",name:"@s"}}]
# tellraw @a ["U: Scoreboard Old Health: ", {score:{objective:"survivalgames.player.old_health",name:"@s"}}]

scoreboard players operation $health_delta survivalgames.player.old_health = @s survivalgames.player.health
scoreboard players operation $health_delta survivalgames.player.old_health -= @s survivalgames.player.old_health

# Heal or hurt events but no source
execute if score $temp.propagate_event survivalgames.player.old_health matches 1 if score $health_delta survivalgames.player.old_health matches ..-1 run function survivalgames:state/on_hurt_no_source
execute if score $temp.propagate_event survivalgames.player.old_health matches 1 unless score @s survivalgames.player.old_health matches 0 if score $health_delta survivalgames.player.old_health matches 1.. run function survivalgames:state/on_heal

function survivalgames:player/health/loss/reset

execute if score @s survivalgames.player.health matches 0 run tag @s add survivalgames.player.health.loss.skip

