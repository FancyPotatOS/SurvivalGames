#
#   Merge String
#   
#   Purpose: To merge two storage values 'survivalgames:temp a' and 'survivalgames:temp b'
#
#   Input: None
#


data modify storage survivalgames:temp macro set value {a:"", b:""}
data modify storage survivalgames:temp macro.a set from storage survivalgames:temp a
data modify storage survivalgames:temp macro.b set from storage survivalgames:temp b
function survivalgames:tools/string/macro/merge with storage survivalgames:temp macro

