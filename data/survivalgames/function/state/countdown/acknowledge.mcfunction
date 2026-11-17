#
#   Countdown Acknowledge
#   
#   Purpose: To acknowledge if this state is the one to be transitioned to
#
#   Input: None
#


scoreboard players set $acknowledgement_code survivalgames.state 1
scoreboard players set survivalgames.countdown survivalgames.state 1

