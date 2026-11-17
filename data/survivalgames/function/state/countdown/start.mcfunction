#
#   Countdown Start
#   
#   Purpose: To set up the countdown and players
#
#   Input: None
#


execute as @a at @s run function survivalgames:state/countdown/setup_player

scoreboard players operation $temp.state.countdown.time survivalgames.state = $state.countdown.start_time survivalgames.state

