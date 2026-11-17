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
gamerule minecraft:advance_time false
gamerule minecraft:advance_weather false
gamerule minecraft:allow_entering_nether_using_portals false
gamerule minecraft:block_drops false
gamerule minecraft:block_explosion_drop_decay false
gamerule minecraft:command_block_output false
gamerule minecraft:command_blocks_work true
gamerule minecraft:drowning_damage true
gamerule minecraft:elytra_movement_check false
gamerule minecraft:ender_pearls_vanish_on_death true
gamerule minecraft:entity_drops false
gamerule minecraft:fall_damage true
gamerule minecraft:fire_damage true
gamerule minecraft:fire_spread_radius_around_player 0
gamerule minecraft:forgive_dead_players true
gamerule minecraft:freeze_damage true
gamerule minecraft:global_sound_events true
gamerule minecraft:immediate_respawn true
gamerule minecraft:keep_inventory true
gamerule minecraft:lava_source_conversion false
gamerule minecraft:limited_crafting true
gamerule minecraft:locator_bar true
gamerule minecraft:log_admin_commands true
# gamerule minecraft:max_minecart_speed 24
gamerule minecraft:max_snow_accumulation_height 4
gamerule minecraft:natural_health_regeneration true
gamerule minecraft:player_movement_check false
gamerule minecraft:players_nether_portal_creative_delay 0
gamerule minecraft:players_nether_portal_default_delay 0
gamerule minecraft:players_sleeping_percentage 0
gamerule minecraft:projectiles_can_break_blocks false
gamerule minecraft:pvp true
gamerule minecraft:raids false
gamerule minecraft:random_tick_speed 0
gamerule minecraft:respawn_radius 0
gamerule minecraft:send_command_feedback false
gamerule minecraft:show_advancement_messages false
gamerule minecraft:show_death_messages true
gamerule minecraft:spawn_mobs false
gamerule minecraft:spawn_monsters false
gamerule minecraft:spawn_patrols false
gamerule minecraft:spawn_phantoms false
gamerule minecraft:spawn_wandering_traders false
gamerule minecraft:spawn_wardens true
gamerule minecraft:spawner_blocks_work true
gamerule minecraft:spectators_generate_chunks false
gamerule minecraft:spread_vines false
gamerule minecraft:tnt_explodes true
gamerule minecraft:tnt_explosion_drop_decay false
gamerule minecraft:universal_anger false
gamerule minecraft:water_source_conversion false

# Difficulty
difficulty normal

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
scoreboard objectives add survivalgames.state dummy
data merge storage survivalgames:state {current_state:"survivalgames:lobby",next_state:"survivalgames:lobby",fallback_state:"survivalgames:lobby"}

# Default to lobby
function survivalgames:state/lobby/acknowledge

# Game
scoreboard objectives add survivalgames.game dummy
scoreboard players set $next_game survivalgames.game 2
scoreboard players set $current_game survivalgames.game 1

# Configuration
scoreboard objectives add survivalgames.config dummy
function survivalgames:config/reset

