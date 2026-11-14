#
#   Display Invitation
#   
#   Purpose: To display this player's invitation link with the right trigger command
#
#   Input: {team_id: int}
#


$tellraw @a[tag=!something] ["", {text:"[Join]",color:green,bold:true,hover_event:{action:"show_text",value:"Click to join"},click_event:{action:"run_command",command:"/trigger survivalgames.team.invite.join.trigger set $(team_id)"}}]

