#
#   Unacknowledged State
#   
#   Purpose: To fall back to the specified state in storage 'survivalgames:state fallback_state' with an error message
#
#   Input: None
#


# Error message
tellraw @a ["", {translate:"survivalgames.state.unacknowledged.before",fallback:"Attempted to transition to unknown state ",color:red,bold:true,italic:false},{storage:"survivalgames:state",nbt:"next_state",color:red,bold:true,italic:true},{translate:"survivalgames.state.unacknowledged.after","fallback":".",color:red,bold:true,italic:false}]

# Stop logic
function survivalgames:state/stop

# Use fallback
data modify storage survivalgames:state current_state set from storage survivalgames:state fallback_state

# Start logic
function survivalgames:state/start

