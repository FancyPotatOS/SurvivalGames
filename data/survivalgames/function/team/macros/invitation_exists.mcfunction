#
#   Save Invitation
#   
#   Purpose: To save the provided invitation to this player
#
#   Input: {id: int, team_id: int}
#


scoreboard players set $temp.invitation_exists survivalgames.team.id 0
$execute if data storage survivalgames:team invitations.$(id){$(team_id):1} run scoreboard players set $temp.invitation_exists survivalgames.team.id 1

