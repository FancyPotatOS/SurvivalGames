#
#   Initialize
#   
#   Purpose: To initialize the player's id
#
#   Input: None
#


# Save ID
scoreboard players operation @s survivalgames.player.id = $next_id survivalgames.player.id

# Increment next id
scoreboard players add $next_id survivalgames.player.id 1

