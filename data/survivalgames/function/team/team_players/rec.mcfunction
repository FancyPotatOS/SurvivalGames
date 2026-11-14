#
#   Recursive call
#   
#   Purpose: To append this player's name to storage 'survivalgames:temp team_players'
#
#   Input: None
#


# Add comma prefix
data modify storage survivalgames:temp a set from storage survivalgames:temp team_players
data modify storage survivalgames:temp b set value ", "
function survivalgames:tools/string/merge
data modify storage survivalgames:temp team_players set from storage survivalgames:temp c

# Add my name
function survivalgames:team/team_players/get_current

# Run if there's more players
execute as @p[tag=survivalgames.team.grouped] if entity @s at @s run function survivalgames:team/team_players/rec

