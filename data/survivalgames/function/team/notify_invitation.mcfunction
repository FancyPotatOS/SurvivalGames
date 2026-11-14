#
#   Assign New Team
#   
#   Purpose: To notify this player of an invitation from team '$temp.inviting_team survivalgames.team.id'
#
#   Input: None
#   Player: Tag 'survivalgames.team.inviting_player' is the inviting player
#


# List team
execute as @p[tag=survivalgames.team.inviting_player] at @s run function survivalgames:team/team_players/get

data modify storage survivalgames:temp a set value "You've been invited to join ["
data modify storage survivalgames:temp b set from storage survivalgames:temp team_players
function survivalgames:tools/string/merge

data modify storage survivalgames:temp a set from storage survivalgames:temp c
data modify storage survivalgames:temp b set value "]'s team!"
function survivalgames:tools/string/merge

data modify storage survivalgames:temp message set from storage survivalgames:temp c
function survivalgames:tools/string/display

# Get team ID
data modify storage survivalgames:temp macro set value {team_id:0}
execute store result storage survivalgames:temp macro.team_id int 1 run scoreboard players get $temp.inviting_team survivalgames.team.id
function survivalgames:team/macros/display_invitation_link with storage survivalgames:temp macro

