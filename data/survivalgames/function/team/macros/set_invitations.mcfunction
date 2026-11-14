#
#   Check Invitations Set
#   
#   Purpose: To ensure that this player has an invitation entry
#
#   Input: {id: int}
#


$execute unless data storage survivalgames:team invitations.$(id) run data modify storage survivalgames:team invitations.$(id) set value {}

