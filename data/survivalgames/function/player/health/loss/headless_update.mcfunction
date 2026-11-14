#
#   Headless Health Update
#   
#   Purpose: To update this player's health score from any point in time (ex. before scoreboard is updated)
#
#   Input: None
#


execute store result score $temp.player_health survivalgames.player.old_health run data get entity @s Health

# tellraw @a ["HU: Scoreboard Health: ", {score:{objective:"survivalgames.player.health",name:"@s"}}]
# tellraw @a ["HU: New Health: ", {score:{objective:"survivalgames.player.old_health",name:"$temp.player_health"}}]

scoreboard players operation $health_delta survivalgames.player.old_health = $temp.player_health survivalgames.player.old_health
scoreboard players operation $health_delta survivalgames.player.old_health -= @s survivalgames.player.old_health

# Heal or hurt events but no source
execute if score $temp.propagate_event survivalgames.player.old_health matches 1 if score $health_delta survivalgames.player.old_health matches ..-1 run function survivalgames:state/on_hurt_no_source
execute if score $temp.propagate_event survivalgames.player.old_health matches 1 if score $health_delta survivalgames.player.old_health matches 1.. run function survivalgames:state/on_heal

scoreboard players operation @s survivalgames.player.old_health = $temp.player_health survivalgames.player.old_health

tag @s add survivalgames.player.health.loss.skip

