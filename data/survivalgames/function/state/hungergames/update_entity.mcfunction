#
#   Update Entity
#   
#   Purpose: To update this entity, as it's from an older game
#
#   Input: None
#


# API call!
function #survivalgames:game/update_entity

# Now updated!
scoreboard players operation @s survivalgames.game = $current_game survivalgames.game

