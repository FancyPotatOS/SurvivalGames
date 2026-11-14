#
#   Save Player Data
#   
#   Purpose: To load the playerdata to storage 'survivalgames:playerdata current'
#
#   Input: {uuid: str}
#


data modify storage survivalgames:playerdata current set from storage survivalgames:playerdata "$(uuid)"

