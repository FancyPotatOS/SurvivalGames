#
#   TP Facing Macro
#   
#   Purpose: To teleport the player tagged with "survivalgames.cornucopia.player.target" by the specified distance in front of this entity
#
#   Input: {distance: float}
#


# $say execute at @s rotated as @s as @p[tag=survivalgames.cornucopia.player.target] positioned ^ ^ ^$(distance) positioned over motion_blocking_no_leaves run tp @s ~ ~ ~ facing entity @n[type=marker,tag=survivalgames.cornucopia.center]
$execute at @s rotated as @s as @p[tag=survivalgames.cornucopia.player.target] positioned ^ ^ ^$(distance) positioned over motion_blocking_no_leaves run tp @s ~ ~ ~ facing entity @n[type=marker,tag=survivalgames.cornucopia.center]

