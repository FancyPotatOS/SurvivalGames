#
#   Login Check
#   
#   Purpose: To run logic for when a player logs in
#
#   Input: None
#


execute as @a unless score @s survivalgames.player.time = $world_time survivalgames.master run function survivalgames:player/login/on_login

