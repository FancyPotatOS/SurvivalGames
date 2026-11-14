#
#   Transition State
#   
#   Purpose: To transition to the state in storage `survivalgames:state next_state` or fallback to state in storage `survivalgames:state fallback_state`
#
#   Input: None
#


# Assume unacknowledged
scoreboard players set acknowledgement_code survivalgames.state 0

function #survivalgames:state/acknowledge

execute if score acknowledgement_code survivalgames.state matches 0 run return run function survivalgames:state/ack/unacknowledged
execute if score acknowledgement_code survivalgames.state matches 1 run return run function survivalgames:state/ack/acknowledged
execute if score acknowledgement_code survivalgames.state matches 2 run return run function survivalgames:state/ack/failed

