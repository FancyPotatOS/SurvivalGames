#
#   Check Invitations Set
#   
#   Purpose: To ensure that this player has an invitation entry
#
#   Input: None
#


data modify storage survivalgames:team macro set value {id:0}
execute store result storage survivalgames:team macro.id int 1 run scoreboard players get @s survivalgames.player.id

function survivalgames:team/macros/set_invitations with storage survivalgames:team macro

