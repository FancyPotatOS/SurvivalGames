#
#   Leave Team
#   
#   Purpose: To leave this team, unless I'm the only member
#
#   Input: None
#


# Check team count
scoreboard players operation $temp.target_team survivalgames.team.id = @s survivalgames.team.id
function survivalgames:team/get_team_count
execute if score $temp.team_size survivalgames.team.id matches 1 run return run tellraw @a[tag=!something] {"translate":"survivalgames.team.leave.failure.only_member","fallback":"You cannot leave this team as you are the only member."}

# Notify other members that I'm leaving
tag @s add survivalgames.team.leaving_player
function survivalgames:team/group_team
tag @s remove survivalgames.team.grouped
tellraw @a[tag=survivalgames.team.grouped] ["",{"translate":"survivalgames.team.leave.left_before_name","fallback":""},{selector:"@p[tag=survivalgames.team.leaving_player]"},{"translate":"survivalgames.team.leave.left_after_name","fallback":" left your team."}]
function survivalgames:team/ungroup_team
tag @s remove survivalgames.team.leaving_player

# Leave the team
function survivalgames:team/assign_new_team

