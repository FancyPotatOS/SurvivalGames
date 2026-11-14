#
#   Merge String
#   
#   Purpose: To merge two storage values 'survivalgames:temp a' and 'survivalgames:temp b'
#
#   Input: None
#


data modify storage survivalgames:temp macro set value {message:"",options:""}
data modify storage survivalgames:temp macro.message set from storage survivalgames:temp message
execute if data storage survivalgames:temp options run data modify storage survivalgames:temp macro.options set from storage survivalgames:temp options
function survivalgames:tools/string/macro/display with storage survivalgames:temp macro

data remove storage survivalgames:temp message
data remove storage survivalgames:temp options

