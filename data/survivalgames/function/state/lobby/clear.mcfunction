#
#   Lobby Clear
#   
#   Purpose: To clear the players of all lobby-related data
#
#   Input: None
#


effect clear @a
scoreboard players reset survivalgames.lobby survivalgames.state

team leave survivalgames.lobby

