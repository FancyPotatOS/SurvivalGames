#
#   Update Cake
#   
#   Purpose: To update this entity marker for Cake
#
#   Input: None
#


execute unless entity @s[type=minecraft:marker,tag=survivalgames.cake] run return 0

setblock ~ ~ ~ minecraft:cake strict

