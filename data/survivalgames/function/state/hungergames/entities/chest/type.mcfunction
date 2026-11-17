#
#   Set Type
#   
#   Purpose: To save the type data to the macro
#
#   Input: None
#


execute if entity @s[tag=survivalgames.chest.type.single] run return run data modify storage survivalgames:temp macro.type set value "single"
execute if entity @s[tag=survivalgames.chest.type.left] run return run data modify storage survivalgames:temp macro.type set value "left"
execute if entity @s[tag=survivalgames.chest.type.right] run return run data modify storage survivalgames:temp macro.type set value "right"

