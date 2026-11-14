#
#   Save Invitation
#   
#   Purpose: To save an invitation from team '$temp.inviting_team survivalgames.team.id' to this player's invitation
#
#   Input: None
#   Player: Tag 'survivalgames.team.inviting_player' is the inviting player
#


# Ensure we have the invitations component
function survivalgames:team/check_invitations_set

data modify storage survivalgames:team macro set value {id:0,team_id:0,value:1}
execute store result storage survivalgames:team macro.id int 1 run scoreboard players get @s survivalgames.player.id
execute store result storage survivalgames:team macro.team_id int 1 run scoreboard players get $temp.inviting_team survivalgames.team.id

# Check if the invitation existed already
function survivalgames:team/macros/invitation_exists with storage survivalgames:team macro

# Set to true
function survivalgames:team/macros/save_invitation with storage survivalgames:team macro

# Notify the player if they haven't got one already
execute if score $temp.invitation_exists survivalgames.team.id matches 1 as @p[tag=survivalgames.team.inviting_player] at @s run tellraw @a[tag=!something] {"translate":"survivalgames.team.invitation.failure.already_invited","fallback":"That player already has an invitation from your team."}
execute if score $temp.invitation_exists survivalgames.team.id matches 0 run function survivalgames:team/notify_invitation
scoreboard players enable @s survivalgames.team.invite.join.trigger

