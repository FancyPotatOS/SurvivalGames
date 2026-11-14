#
#   Initialize Player Data
#   
#   Purpose: To initialize this player's playerdata storage
#
#   Input: None
#


# Default to uninitialized
data modify storage survivalgames:playerdata current set value {initialized:0}

# Load the player's data
function survivalgames:playerdata/load

# Check if it was not overwritten
execute if data storage survivalgames:playerdata current{initialized:1} run function survivalgames:playerdata/init

