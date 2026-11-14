#
#   Remove Invitation
#   
#   Purpose: To remove the provided invitation to this player
#
#   Input: {id: int, team_id: int}
#


$data remove storage survivalgames:team invitations.$(id).$(team_id)

