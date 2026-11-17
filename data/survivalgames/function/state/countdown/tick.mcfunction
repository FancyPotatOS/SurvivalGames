#
#   Countdown Tick
#   
#   Purpose: To update the countdown
#
#   Input: None
#


function survivalgames:state/countdown/display

execute if score $temp.state.countdown.time survivalgames.state matches ..0 run return run function survivalgames:state/countdown/to_game

scoreboard players remove $temp.state.countdown.time survivalgames.state 1

