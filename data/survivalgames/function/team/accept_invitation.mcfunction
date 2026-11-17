#
#   Accept Invitation
#   
#   Purpose: To accept a team invitation if this player had one
#
#   Input: None
#


# # Check if had an invitation
data modify storage survivalgames:team macro set value {id:0,team_id:0}
execute store result storage survivalgames:team macro.id int 1 run scoreboard players get @s survivalgames.player.id
execute store result storage survivalgames:team macro.team_id int 1 run scoreboard players get @s survivalgames.team.invite.join.trigger
function survivalgames:team/macros/invitation_exists with storage survivalgames:team macro

# # No invitation, stop here
execute if score $temp.invitation_exists survivalgames.team.id matches 0 run return run tellraw @a[tag=!something] {"translate":"survivalgames.team.invitation.failure.no_invitation","fallback":"You don't have an invitation from that team."}

# # Check if the team would now be full
scoreboard players operation $temp.target_team survivalgames.team.id = @s survivalgames.team.invite.join.trigger
function survivalgames:team/get_team_count
# Account for myself
scoreboard players operation $temp.total_size survivalgames.team.id = $temp.team_size survivalgames.team.id
scoreboard players add $temp.total_size survivalgames.team.id 1

# Stop if team would be too full
execute if score $team.max_team survivalgames.config < $temp.total_size survivalgames.team.id run return run tellraw @a[tag=!something] {"translate":"survivalgames.team.invitation.failure.team_full","fallback":"That team is full!"}

# Stop if team was actually empty
execute if score $temp.total_size survivalgames.team.id matches 1 run return run tellraw @a[tag=!something] {"translate":"survivalgames.team.invitation.failure.team_empty","fallback":"That team is empty!"}

# # We have an invitation from them and it's the right size
# Change team ID
scoreboard players operation @s survivalgames.team.id = @s survivalgames.team.invite.join.trigger
# Tell me such
tellraw @a[tag=!something] {"translate":"survivalgames.team.invitation.joined_team","fallback":"You joined the team."}

# Tell me all my team members
function survivalgames:team/team_players/display_team

# Remove the invitation
data modify storage survivalgames:temp macro set value {id:0,team_id:0}
execute store result storage survivalgames:temp macro.id int 1 run scoreboard players get @s survivalgames.player.id
execute store result storage survivalgames:temp macro.team_id int 1 run scoreboard players get @s survivalgames.team.id
function survivalgames:team/macros/remove_invitation with storage survivalgames:temp macro

