#
#   Health Tick
#   
#   Purpose: To update all player's health score
#
#   Input: None
#


scoreboard players set $temp.propagate_event survivalgames.player.old_health 1
execute as @a unless score @s survivalgames.player.health = @s survivalgames.player.old_health at @s run function survivalgames:player/health/loss/update
scoreboard players set $temp.propagate_event survivalgames.player.old_health 0

