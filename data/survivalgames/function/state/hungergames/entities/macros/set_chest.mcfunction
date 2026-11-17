#
#   Set Check Macro
#   
#   Purpose: To set this block as the specified chest block
#
#   Input: {facing:str, type:str, waterlogged:str}
#


$setblock ~ ~ ~ chest[facing=$(facing),type=$(type),waterlogged=$(waterlogged)] strict

