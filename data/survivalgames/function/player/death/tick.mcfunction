#
#   Death Tick
#   
#   Purpose: To update all player's death score
#
#   Input: None
#


scoreboard players set $temp.propagate_event survivalgames.player.old_deaths 1
execute as @a unless score @s survivalgames.player.deaths = @s survivalgames.player.old_deaths at @s run function survivalgames:player/death/update
scoreboard players set $temp.propagate_event survivalgames.player.old_deaths 0

