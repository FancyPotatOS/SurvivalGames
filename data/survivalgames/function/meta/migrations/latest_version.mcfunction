#
#   Migration File
#   
#   Purpose: To update the world to the latest version
#
#   Input: None
#


execute unless score $version survivalgames.master matches 1.. run \
function survivalgames:meta/migrations/v0


