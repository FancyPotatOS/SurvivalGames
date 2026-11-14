#
#   On Login
#   
#   Purpose: To update the player when they log in
#
#   Input: None
#


# Check if player data is initialized
function survivalgames:playerdata/check_init

# Assume we shouldn't reset all of the player's data
data merge storage survivalgames:temp {reset:0}

# Check if the player should be reset
function #survivalgames:player/login/should_reset

# Reset the player
execute if data storage survivalgames:temp {reset:1} run function #survivalgames:player/reset

# Run on login events
function #survivalgames:player/login/on_login

scoreboard players operation @s survivalgames.player.time = $world_time survivalgames.master

