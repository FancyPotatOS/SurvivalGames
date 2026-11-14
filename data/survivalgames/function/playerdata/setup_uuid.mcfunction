#
#   Setup UUID
#   
#   Purpose: To prep the macro component with this player's UUID
#
#   Input: None
#


data modify storage survivalgames:playerdata macro set value {uuid:"_"}
data modify storage survivalgames:playerdata macro.uuid set from entity @s UUID

