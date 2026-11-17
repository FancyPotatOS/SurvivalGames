#
#   Entity Check
#   
#   Purpose: To check all entities for their game ID, and update them as necessary
#
#   Input: None
#


# Reset entity check
scoreboard players operation $temp.map.entity_check_time survivalgames.game = $map.entity_check_time survivalgames.config

# As markers, unless this game score
execute as @e[type=minecraft:marker] unless score @s survivalgames.game = $current_game survivalgames.game at @s run function survivalgames:state/hungergames/update_entity

execute as @e[type=minecraft:item] unless score @s survivalgames.game = $current_game survivalgames.game at @s run function survivalgames:state/hungergames/update_item

