#
#   Check Initialize
#   
#   Purpose: To initialize the player if they just logged in
#
#   Input: None
#


execute unless score @s survivalgames.player.uuid matches -2147483648..2147483647 run function survivalgames:player/uuid/init

