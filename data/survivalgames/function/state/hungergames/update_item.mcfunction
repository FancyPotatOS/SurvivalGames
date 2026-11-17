#
#   Update Entity
#   
#   Purpose: To update this entity, as it's from an older game
#
#   Input: None
#


# Unset items are new and can be saved
execute unless score @s survivalgames.game matches 1.. run return run scoreboard players operation @s survivalgames.game = $current_game survivalgames.game

# Otherwise, KILL IT WITH FIRE
kill @s

