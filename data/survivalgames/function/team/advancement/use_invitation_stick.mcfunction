#
#   Using Invitation Stick
#   
#   Purpose: To run logic when a player uses an invitation stick
#
#   Input: None
#


advancement revoke @s only survivalgames:team/use_invitation_stick

scoreboard players operation $temp.last_used_invitation_stick survivalgames.team.use_invitation_stick.cooldown = @s survivalgames.team.use_invitation_stick.cooldown
scoreboard players operation @s survivalgames.team.use_invitation_stick.cooldown = $world_time survivalgames.master

scoreboard players add $temp.last_used_invitation_stick survivalgames.team.use_invitation_stick.cooldown 1
execute if score $world_time survivalgames.master <= $temp.last_used_invitation_stick survivalgames.team.use_invitation_stick.cooldown run return 0

scoreboard players enable @s invite_player
tellraw @a[tag=!something] {translate:"survivalgames.team.invite.button",fallback:"[Click here to invite a player]",bold:true,color:green,hover_event:{action:"show_text",value:{translate:"survivalgames.team.invite.button.hover",fallback:"Enter the player's ID at the end of the command"}},click_event:{action:"suggest_command",command:"/trigger invite_player set "}}
tellraw @a[tag=!something] {translate:"survivalgames.team.show.button",fallback:"[Click here to show your team]",bold:true,color:green,click_event:{action:"run_command",command:"/trigger invite_player set -1"}}
tellraw @a[tag=!something] {translate:"survivalgames.team.leave.button",fallback:"[Click here to leave your team]",bold:true,color:red,click_event:{action:"run_command",command:"/trigger invite_player set -2"}}

