#
#   State On Hurt
#   
#   Purpose: To run the current state's player hurt logic
#
#   Input: None
#


# Tag relevant entities
tag @s add survivalgames.state.target
execute on attacker run tag @s add survivalgames.state.attacker

# Run logic
function survivalgames:state/on_hurt

# Clean up data
advancement revoke @s only survivalgames:state/on_hurt
tag @s remove survivalgames.state.target
execute on target run tag @s remove survivalgames.state.attacker

