#
#   Lobby Player Setup
#   
#   Purpose: To run the lobby player setup logic
#
#   Input: None
#


execute unless score $temp.state.lobby.skip_item_clearing survivalgames.state matches 1 run clear @s
scoreboard players reset $temp.state.lobby.skip_item_clearing survivalgames.state

effect clear @s
effect give @s minecraft:resistance infinite 4 true
effect give @s minecraft:instant_health infinite 255 true
effect give @s minecraft:saturation infinite 255 true

execute unless score $temp.state.lobby.skip_teleport survivalgames.state matches 1 run tp @s @e[type=marker,tag=survivalgames.map.lobby,limit=1,sort=random]
scoreboard players reset $temp.state.lobby.skip_teleport survivalgames.state

