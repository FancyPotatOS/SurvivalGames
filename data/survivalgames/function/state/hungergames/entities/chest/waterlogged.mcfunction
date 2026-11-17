#
#   Set Waterlogged
#   
#   Purpose: To save the waterlogged data to the macro
#
#   Input: None
#


execute if entity @s[tag=survivalgames.chest.waterlogged] run return run data modify storage survivalgames:temp macro.waterlogged set value "true"

