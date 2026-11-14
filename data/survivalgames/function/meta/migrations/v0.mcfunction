#
#   Migration File V0
#   
#   Purpose: To migrate this world to the appropriate version
#
#   Input: None
#


tellraw @a ["",{"text":"[Survival Games Datapack]","bold":true,"color":"dark_blue"}," - Setup"]

# Apply last migration
#execute unless score $version survivalgames.master matches 1.. run function survivalgames:meta/migrate/v0

# Set this as the latest $version number
scoreboard players set $version survivalgames.master 1

# World setup
# # Forceloaded world section
forceload add 0 0 1 1
# # Gamerules
gamerule immediate_respawn true

# Player Data
data merge storage survivalgames:playerdata {}

scoreboard objectives add survivalgames.player.uuid dummy
scoreboard objectives add survivalgames.player.id dummy
scoreboard objectives add survivalgames.player.time minecraft.custom:minecraft.play_time

scoreboard objectives setdisplay below_name survivalgames.player.id
scoreboard objectives modify survivalgames.player.id displayname {"text":"ID"}
scoreboard objectives modify survivalgames.player.id numberformat styled {bold:true,color:"gold"}

scoreboard players set $next_id survivalgames.player.id 1

# # Health
scoreboard objectives add survivalgames.player.old_health dummy
scoreboard objectives add survivalgames.player.health health

# # Deaths
scoreboard objectives add survivalgames.player.old_deaths dummy
scoreboard objectives add survivalgames.player.deaths deathCount

# Teams
data merge storage survivalgames:team {invitations:{}}

scoreboard objectives add survivalgames.team.id dummy

scoreboard players set $next_team_id survivalgames.team.id 1

# # Team invitation
scoreboard objectives add survivalgames.team.invite.join.trigger trigger
scoreboard objectives add invite_player trigger
scoreboard objectives add survivalgames.team.use_invitation_stick.cooldown dummy

# States
data merge storage survivalgames:state {current_state:"survivalgames:lobby",next_state:"survivalgames:lobby",fallback_state:"survivalgames:lobby"}

scoreboard objectives add survivalgames.state dummy

# Configuration
function survivalgames:config/reset

