#
#   Set Loot
#   
#   Purpose: To set this chest block's loot data
#
#   Input: None
#


execute if entity @s[tag=survivalgames.chest.loot.cornucopia] run return run data modify block ~ ~ ~ LootTable set value "survivalgames:map/chest/cornucopia"
execute if entity @s[tag=survivalgames.chest.loot.garbage] run return run data modify block ~ ~ ~ LootTable set value "survivalgames:map/chest/garbage"
execute if entity @s[tag=survivalgames.chest.loot.basic] run return run data modify block ~ ~ ~ LootTable set value "survivalgames:map/chest/basic"
execute if entity @s[tag=survivalgames.chest.loot.better] run return run data modify block ~ ~ ~ LootTable set value "survivalgames:map/chest/better"
execute if entity @s[tag=survivalgames.chest.loot.epic] run return run data modify block ~ ~ ~ LootTable set value "survivalgames:map/chest/epic"

