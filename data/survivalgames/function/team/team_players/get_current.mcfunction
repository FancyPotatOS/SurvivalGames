#
#   Recursive call
#   
#   Purpose: To add this player's name to storage 'survivalgames:temp team_players' 
#
#   Input: None
#


function survivalgames:tools/player_name/get

data modify storage survivalgames:temp a set from storage survivalgames:temp team_players
data modify storage survivalgames:temp b set from storage survivalgames:temp player_name
function survivalgames:tools/string/merge
data modify storage survivalgames:temp team_players set from storage survivalgames:temp c

tag @s remove survivalgames.team.grouped

