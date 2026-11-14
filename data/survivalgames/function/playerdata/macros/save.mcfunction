#
#   Save Player Data
#   
#   Purpose: To save the playerdata in storage 'survivalgames:playerdata current'
#
#   Input: {uuid: str}
#


$data modify storage survivalgames:playerdata "$(uuid)" set from storage survivalgames:playerdata current

