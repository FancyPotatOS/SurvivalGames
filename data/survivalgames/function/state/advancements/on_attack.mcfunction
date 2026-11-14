#
#   State On Attack
#   
#   Purpose: To run the current state's player attack logic
#
#   Input: None
#


# Tag relevant entities
tag @s add survivalgames.state.attacker
execute on target run tag @s add survivalgames.state.target

# Run logic
function survivalgames:state/on_attack

# Clean up data
advancement revoke @s only survivalgames:state/on_attack
tag @s remove survivalgames.state.attacker
execute on target run tag @s remove survivalgames.state.target

