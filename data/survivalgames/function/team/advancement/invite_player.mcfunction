#
#   Accept Invitation
#   
#   Purpose: To run logic when a player accepts an invitation
#
#   Input: None
#


scoreboard players operation $temp.invited_player survivalgames.player.id = @s invite_player

# Reset triggers
scoreboard players reset @s invite_player
scoreboard players enable @s invite_player
advancement revoke @s only survivalgames:team/invite_player

# Run logic
function survivalgames:team/invite_player

