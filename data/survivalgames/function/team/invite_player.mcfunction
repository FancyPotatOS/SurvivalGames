#
#   Invite Player
#   
#   Purpose: To invite the player with id '$temp.invited_player survivalgames.player.id' to your team
#
#   Input: None
#


# Find player with that ID
scoreboard players set $temp.found_player survivalgames.player.id 0
execute as @a if score @s survivalgames.player.id = $temp.invited_player survivalgames.player.id run scoreboard players set $temp.found_player survivalgames.player.id 1

# Stop if player doesn't exist
execute if score $temp.found_player survivalgames.player.id matches 0 run return run tellraw @a[tag=!something] {"translate":"survivalgames.team.invitation.failure.no_player","fallback":"That player doesn't exist."}

# Check if it's you/your team
scoreboard players operation $temp.inviting_player_team survivalgames.team.id = @s survivalgames.team.id
execute if score @s survivalgames.player.id = $temp.invited_player survivalgames.player.id run return run tellraw @a[tag=!something] {"translate":"survivalgames.team.invitation.failure.invited_self","fallback":"You cannot invite yourself."}
execute as @a if score @s survivalgames.player.id = $temp.invited_player survivalgames.player.id if score @s survivalgames.team.id = $temp.inviting_player_team survivalgames.team.id run return run tellraw @a[tag=!something] {"translate":"survivalgames.team.invitation.failure.already_on_team","fallback":"That player is already on your team."}

# Get the current team size
scoreboard players operation $temp.target_team survivalgames.team.id = @s survivalgames.team.id
function survivalgames:team/get_team_count

# Add one
scoreboard players operation $temp.total_size survivalgames.team.id = $temp.team_size survivalgames.team.id
scoreboard players add $temp.total_size survivalgames.team.id 1

# Stop if team would be too full
execute if score $config.max_team survivalgames.team.id < $temp.total_size survivalgames.team.id run return run tellraw @a[tag=!something] {"translate":"survivalgames.team.invitation.failure.team_already_full","fallback":"Your team is full!"}

# Save invitation
tag @s add survivalgames.team.inviting_player
scoreboard players operation $temp.inviting_team survivalgames.team.id = @s survivalgames.team.id
execute as @a if score @s survivalgames.player.id = $temp.invited_player survivalgames.player.id run function survivalgames:team/save_invitation
tag @s remove survivalgames.team.inviting_player

