#
#   Calcualte Player Name
#   
#   Purpose: To calculate the player's name and save it to storage 'survivalgames:temp player_name'
#
#   Input: None
#


# Playerdata is already loaded from */get mcfunction

# Summon armor stand with static UUID
summon minecraft:armor_stand 0 0 0 {UUID:[0,0,0,5],ShowArms:true,NoGravity:true,Invisible:true,Invulnerable:true}

# Give it the player's head
loot replace entity 0-0-0-0-5 weapon.mainhand loot survivalgames:player_head

# Get profile name
data modify storage survivalgames:temp player_name set from entity 0-0-0-0-5 equipment.mainhand.components."minecraft:profile".name

# Remove item
item replace entity 0-0-0-0-5 weapon.mainhand with minecraft:air

# Kill armor stand
kill 0-0-0-0-5

