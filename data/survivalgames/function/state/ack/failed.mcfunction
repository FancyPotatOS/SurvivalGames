#
#   Failed State
#   
#   Purpose: To fall back to the specified state in storage 'survivalgames:state fallback_state' quietly
#
#   Input: None
#


# Stop logic
function survivalgames:state/stop

# Use fallback
data modify storage survivalgames:state current_state set from storage survivalgames:state fallback_state

# Prestart logic
function survivalgames:state/prestart

# Start logic
function survivalgames:state/start

