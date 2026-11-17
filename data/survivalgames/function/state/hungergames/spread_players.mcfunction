#
#   Spread Players
#   
#   Purpose: To evenly distribute the players around this entity, the cornucopia
#
#   Input: None
#


summon minecraft:armor_stand ~ ~ ~ {NoGravity:true,Invisible:true,Invulnerable:true,UUID:[0,0,0,6]}

# Get the angle to spin per player: (360.00 / # of players)
scoreboard players set $temp.map.cornucopia.spin survivalgames.game 0
scoreboard players set $temp.map.cornucopia.spin.delta survivalgames.game 36000
scoreboard players set $temp.map.cornucopia.players survivalgames.game 0
execute as @a run scoreboard players add $temp.map.cornucopia.players survivalgames.game 1

# Divide 
scoreboard players operation $temp.map.cornucopia.spin.delta survivalgames.game /= $temp.map.cornucopia.players survivalgames.game

tag @a remove survivalgames.cornucopia.player.done
execute as 0-0-0-0-6 at @s run function survivalgames:state/hungergames/spread_players_rec
tag @a remove survivalgames.cornucopia.player.done

kill 0-0-0-0-6

