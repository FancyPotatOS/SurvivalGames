#
#   Death Update
#   
#   Purpose: To update this player's death score
#
#   Input: None
#


execute if entity @s[tag=survivalgames.player.death.skip] run return run tag @s remove survivalgames.player.death.skip

scoreboard players operation $death_delta survivalgames.player.old_deaths = @s survivalgames.player.deaths
scoreboard players operation $death_delta survivalgames.player.old_deaths -= @s survivalgames.player.old_deaths

# Death event but no source
execute if score $temp.propagate_event survivalgames.player.old_deaths matches 1 run function survivalgames:state/on_death_no_source

function survivalgames:player/death/reset

