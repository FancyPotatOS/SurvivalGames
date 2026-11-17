#
#   Hunger Games Clear
#   
#   Purpose: To clear the players of all Hunger Games-related data
#
#   Input: None
#


effect clear @a
execute as @a run function survivalgames:state/hungergames/release_player

scoreboard players reset survivalgames.hungergames survivalgames.state

