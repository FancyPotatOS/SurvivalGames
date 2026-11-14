#
#   State On Kill
#   
#   Purpose: To run the current state's player kill logic
#
#   Input: None
#


# Tag relevant entities
tag @s add survivalgames.state.attacker

# Run logic
function survivalgames:state/on_kill

# Clean up data
advancement revoke @s only survivalgames:state/on_kill
tag @s remove survivalgames.state.attacker

