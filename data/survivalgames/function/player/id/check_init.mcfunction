#
#   Check Initialize
#   
#   Purpose: To initialize the player if they just logged in
#
#   Input: None
#


execute unless score @s survivalgames.player.id matches 1.. run function survivalgames:player/id/init

