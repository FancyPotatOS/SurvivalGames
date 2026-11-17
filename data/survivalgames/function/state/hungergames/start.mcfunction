#
#   Hunger Games Start
#   
#   Purpose: To set up the Hunger Games and players
#
#   Input: None
#


execute as @n[type=minecraft:marker,tag=survivalgames.cornucopia.center] at @s run function survivalgames:state/hungergames/spread_players

execute as @a at @s run function survivalgames:state/hungergames/setup_player

scoreboard players operation $temp.map.countdown survivalgames.game = $map.countdown survivalgames.config
scoreboard players operation $temp.map.entity_check_time survivalgames.game = $map.entity_check_time survivalgames.config

