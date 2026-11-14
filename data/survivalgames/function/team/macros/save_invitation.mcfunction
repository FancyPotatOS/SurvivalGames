#
#   Save Invitation
#   
#   Purpose: To save the provided invitation to this player
#
#   Input: {id: int, team_id: int, value: boolean}
#


$data modify storage survivalgames:team invitations.$(id).$(team_id) set value $(value)

