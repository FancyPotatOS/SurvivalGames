#
#   Display Tem
#   
#   Purpose: To display this player's entire team
#
#   Input: None
#


# List team
function survivalgames:team/team_players/get

# Append string values
data modify storage survivalgames:temp a set value "Your team is ["
data modify storage survivalgames:temp b set from storage survivalgames:temp team_players
function survivalgames:tools/string/merge

# Append part 2
data modify storage survivalgames:temp a set from storage survivalgames:temp c
data modify storage survivalgames:temp b set value "]"
function survivalgames:tools/string/merge

# Display value
data modify storage survivalgames:temp message set from storage survivalgames:temp c
function survivalgames:tools/string/display

