#
#   Hunger Games Tick
#   
#   Purpose: To update the Hunger Games
#
#   Input: None
#


# Entity check
scoreboard players remove $temp.map.entity_check_time survivalgames.game 1
execute if score $temp.map.entity_check_time survivalgames.game matches ..0 run function survivalgames:state/hungergames/entity_check

# Startup time
execute if score $temp.map.countdown survivalgames.game matches 1.. run return run function survivalgames:state/hungergames/startup_tick

# The rest of the game

