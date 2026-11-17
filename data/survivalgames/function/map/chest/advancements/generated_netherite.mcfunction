#
#   Generated Netherite Loot
#   
#   Purpose: To flip the netherite ingot/template loot
#
#   Input: None
#


scoreboard players add $map.chest.netherite.choice survivalgames.game 1
scoreboard players set $temp.map.chest.netherite.mod survivalgames.game 2
scoreboard players operation $map.chest.netherite.choice survivalgames.game %= $temp.map.chest.netherite.mod survivalgames.game

advancement revoke @s only survivalgames:map/chest/generated_netherite

