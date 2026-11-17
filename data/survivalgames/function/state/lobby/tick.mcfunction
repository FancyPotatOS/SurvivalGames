#
#   Lobby Tick
#   
#   Purpose: To update the lobby
#
#   Input: None
#


execute if score $state.lobby.autostart_time survivalgames.config matches 1.. run function survivalgames:state/lobby/update_autostart

