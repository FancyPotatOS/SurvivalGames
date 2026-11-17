#
#   Hunger Games Display Countdown
#   
#   Purpose: To update the Hunger Games while it's starting the games
#
#   Input: None
#


# Countdown
execute if score $temp.map.countdown survivalgames.game matches 1.. if score $temp.map.countdown.mod survivalgames.game matches 0 at @n[type=marker,tag=survivalgames.cornucopia.center] run playsound block.note_block.harp master @a ~ ~ ~ 1 1
execute if score $temp.map.countdown survivalgames.game matches 1.. if score $temp.map.countdown.mod survivalgames.game matches 0 at @n[type=marker,tag=survivalgames.cornucopia.center] run title @a title {score:{objective:"survivalgames.game",name:"$temp.map.countdown.div"}}

# Start!
execute if score $temp.map.countdown survivalgames.game matches 0 at @n[type=marker,tag=survivalgames.cornucopia.center] run playsound minecraft:item.goat_horn.sound.2 master @a ~ ~ ~ 1 1
execute if score $temp.map.countdown survivalgames.game matches 0 at @n[type=marker,tag=survivalgames.cornucopia.center] run title @a title {text:"Go!"}

