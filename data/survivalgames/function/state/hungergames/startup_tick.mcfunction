#
#   Hunger Games Startup Tick
#   
#   Purpose: To update the Hunger Games while it's starting the games
#
#   Input: None
#


scoreboard players remove $temp.map.countdown survivalgames.game 1

scoreboard players set $temp.ticks_per_second survivalgames.game 20

scoreboard players operation $temp.map.countdown.div survivalgames.game = $temp.map.countdown survivalgames.game
scoreboard players operation $temp.map.countdown.div survivalgames.game /= $temp.ticks_per_second survivalgames.game

scoreboard players operation $temp.map.countdown.mod survivalgames.game = $temp.map.countdown survivalgames.game
scoreboard players operation $temp.map.countdown.mod survivalgames.game %= $temp.ticks_per_second survivalgames.game

execute if score $temp.map.countdown.mod survivalgames.game matches 0.. run function survivalgames:state/hungergames/display_countdown

execute if score $temp.map.countdown survivalgames.game matches ..0 as @a run function survivalgames:state/hungergames/release_player

