#
#   To Countdown
#   
#   Purpose: To transition to the countdown state
#
#   Input: None
#


data modify storage survivalgames:state fallback_state set value "survivalgames:lobby"
data modify storage survivalgames:state next_state set value "survivalgames:countdown"

function survivalgames:state/transition

