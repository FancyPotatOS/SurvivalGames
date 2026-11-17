#
#   Reset Countdown Configuration
#   
#   Purpose: To set the base countdown configuration items
#
#   Input: None
#


scoreboard players set $state.countdown.start_time survivalgames.config 200

team add survivalgames.lobby "In Lobby"
team modify survivalgames.lobby collisionRule never
team modify survivalgames.lobby friendlyFire false

