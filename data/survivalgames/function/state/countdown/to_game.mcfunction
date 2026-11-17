#
#   To Game
#   
#   Purpose: To transition to the game state
#
#   Input: None
#


data modify storage survivalgames:state fallback_state set value "survivalgames:lobby"
data modify storage survivalgames:state next_state set value "survivalgames:hungergames"

function survivalgames:state/transition

