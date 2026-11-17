#
#   Set Facing
#   
#   Purpose: To save the facing data to the macro
#
#   Input: None
#


execute if entity @s[tag=survivalgames.chest.facing.north] run return run data modify storage survivalgames:temp macro.facing set value "north"
execute if entity @s[tag=survivalgames.chest.facing.east] run return run data modify storage survivalgames:temp macro.facing set value "east"
execute if entity @s[tag=survivalgames.chest.facing.south] run return run data modify storage survivalgames:temp macro.facing set value "south"
execute if entity @s[tag=survivalgames.chest.facing.west] run return run data modify storage survivalgames:temp macro.facing set value "west"

