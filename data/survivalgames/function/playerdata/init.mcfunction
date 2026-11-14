#
#   Initialize Player Data
#   
#   Purpose: To initialize this player's playerdata storage
#
#   Input: None
#


data modify storage survivalgames:playerdata current set value {initialized:1}
function #survivalgames:playerdata/populate_default

function survivalgames:playerdata/save

