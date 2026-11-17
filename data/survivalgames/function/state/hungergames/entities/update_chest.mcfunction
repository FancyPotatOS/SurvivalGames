#
#   Update Cake
#   
#   Purpose: To update this entity marker for Cake
#
#   Input: None
#


# Check marker type
execute unless entity @s[type=minecraft:marker,tag=survivalgames.chest] run return 0

# Set chest with type
data modify storage survivalgames:temp macro set value {facing:"north",type:"single",waterlogged:"false"}

# Chest data
function survivalgames:state/hungergames/entities/chest/facing
function survivalgames:state/hungergames/entities/chest/type
function survivalgames:state/hungergames/entities/chest/waterlogged

# Apply macro
function survivalgames:state/hungergames/entities/macros/set_chest with storage survivalgames:temp macro

# Set loot
function survivalgames:state/hungergames/entities/chest/loot

