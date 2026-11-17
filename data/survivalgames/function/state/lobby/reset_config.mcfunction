#
#   Reset Lobby Configuration
#   
#   Purpose: To set the base lobby configuration items
#
#   Input: None
#


scoreboard players set $state.lobby.autostart_time survivalgames.config 0

team add survivalgames.lobby "In Lobby"
team modify survivalgames.lobby collisionRule never
team modify survivalgames.lobby friendlyFire false

