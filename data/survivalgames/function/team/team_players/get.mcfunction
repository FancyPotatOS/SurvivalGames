#
#   Get Team Players
#   
#   Purpose: To save the team's entire player names to storage 'survivalgames:temp team_players'
#
#   Input: None
#


# Reset team player string
data modify storage survivalgames:temp team_players set value ""

# Group all team members for ease of access
function survivalgames:team/group_team

# Get one player
execute as @p[tag=survivalgames.team.grouped] at @s run function survivalgames:team/team_players/get_current

# Run if there's more players
execute as @p[tag=survivalgames.team.grouped] if entity @s at @s run function survivalgames:team/team_players/rec

