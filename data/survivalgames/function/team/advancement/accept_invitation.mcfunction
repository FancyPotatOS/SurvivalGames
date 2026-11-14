#
#   Accept Invitation
#   
#   Purpose: To run logic when a player accepts an invitation
#
#   Input: None
#


# Run logic
function survivalgames:team/accept_invitation

# Reset triggers
scoreboard players reset @s survivalgames.team.invite.join.trigger
scoreboard players enable @s survivalgames.team.invite.join.trigger
advancement revoke @s only survivalgames:team/accept_invitation

