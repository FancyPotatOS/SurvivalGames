#
#   Lobby Start
#   
#   Purpose: To set up the lobby and players
#
#   Input: None
#


execute as @a at @s run function survivalgames:state/lobby/setup_player

scoreboard players operation $temp.state.lobby.autostart_time survivalgames.state = $state.lobby.autostart_time survivalgames.config

