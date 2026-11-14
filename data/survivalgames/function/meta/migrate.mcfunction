#
#   Migrate
#   
#   Purpose: To start the migration check
#
#   Input: None
#


# Ensure the master scoreboard exists
scoreboard objectives add survivalgames.master dummy

# Apply migration
function survivalgames:meta/migrations/latest_version

