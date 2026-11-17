#
#   Spread Players (Recursive)
#   
#   Purpose: To teleport a player and spin an incrementing amount to distribute the players
#
#   Input: None
#


tag @p[tag=!survivalgames.cornucopia.player.done] add survivalgames.cornucopia.player.target

# say @p[tag=survivalgames.cornucopia.player.target]

scoreboard players operation $temp.map.cornucopia.spin survivalgames.game += $temp.map.cornucopia.spin.delta survivalgames.game
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get $temp.map.cornucopia.spin survivalgames.game

data modify storage survivalgames:temp macro set value {distance:0.0}
execute store result storage survivalgames:temp macro.distance float 1 run scoreboard players get $map.spawn_radius survivalgames.config
function survivalgames:state/hungergames/macros/tp_facing with storage survivalgames:temp macro

tag @p[tag=survivalgames.cornucopia.player.target] add survivalgames.cornucopia.player.done
tag @p[tag=survivalgames.cornucopia.player.target] remove survivalgames.cornucopia.player.target

execute if entity @p[tag=!survivalgames.cornucopia.player.done] run function survivalgames:state/hungergames/spread_players_rec

