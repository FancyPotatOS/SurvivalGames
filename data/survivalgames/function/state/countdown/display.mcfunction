#
#   Countdown Tick
#   
#   Purpose: To update the countdown
#
#   Input: None
#


scoreboard players set $temp.ticks_per_second survivalgames.state 20

scoreboard players operation $temp.state.countdown.mod survivalgames.state = $temp.state.countdown.time survivalgames.state
scoreboard players operation $temp.state.countdown.mod survivalgames.state %= $temp.ticks_per_second survivalgames.state

execute unless score $temp.state.countdown.mod survivalgames.state matches 0 run return 0

scoreboard players operation $temp.state.countdown.div survivalgames.state = $temp.state.countdown.time survivalgames.state
scoreboard players operation $temp.state.countdown.div survivalgames.state /= $temp.ticks_per_second survivalgames.state

execute as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1

title @a title {score:{objective:"survivalgames.state",name:"$temp.state.countdown.div"}}

