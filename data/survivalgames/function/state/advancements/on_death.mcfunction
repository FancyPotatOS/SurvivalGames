#
#   State On Death
#   
#   Purpose: To run the current state's player death logic
#
#   Input: None
#


# Tag relevant entities
tag @s add survivalgames.state.target
execute on attacker run tag @s add survivalgames.state.attacker

# Run logic
function survivalgames:state/on_death

# Clean up data
advancement revoke @s only survivalgames:state/on_death
tag @s remove survivalgames.state.target
execute on attacker run tag @s remove survivalgames.state.attacker

