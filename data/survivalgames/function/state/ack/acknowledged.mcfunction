#
#   Acknowledged State
#   
#   Purpose: To start the acknowledged state
#
#   Input: None
#


# Stop logic
function survivalgames:state/stop

# Save state
data modify storage survivalgames:state current_state set from storage survivalgames:state next_state

# Start logic
function survivalgames:state/start

