#
#   Get Player Name
#   
#   Purpose: To set the storage 'survivalgames:temp player_name' to this player's name
#
#   Input: None
#


function survivalgames:playerdata/load

# If already saved, use it!
execute if data storage survivalgames:playerdata current.player_name run return run data modify storage survivalgames:temp player_name set from storage survivalgames:playerdata current.player_name

# Otherwise, calcuate the name
function survivalgames:tools/player_name/calculate

# Save back to player storage
data modify storage survivalgames:playerdata current.player_name set from storage survivalgames:temp player_name
function survivalgames:playerdata/save
