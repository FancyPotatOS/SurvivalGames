#
#   Lobby Tick
#   
#   Purpose: To update the lobby
#
#   Input: None
#


execute if score $temp.state.lobby.autostart_time survivalgames.state matches 1.. run function survivalgames:state/lobby/update_autostart

