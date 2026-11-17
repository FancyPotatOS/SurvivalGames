#
#   Lobby Tick
#   
#   Purpose: To update the lobby
#
#   Input: None
#


execute if score $temp.state.lobby.autostart_time survivalgames.state matches ..0 run function survivalgames:state/lobby/to_countdown

scoreboard players remove $temp.state.lobby.autostart_time survivalgames.state 1

