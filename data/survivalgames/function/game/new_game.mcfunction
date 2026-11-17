#
#   New Game
#   
#   Purpose: To update all game values to a new game
#
#   Input: None
#


# New game ID
scoreboard players operation $current_game survivalgames.game = $next_game survivalgames.game
scoreboard players add $next_game survivalgames.game 1

