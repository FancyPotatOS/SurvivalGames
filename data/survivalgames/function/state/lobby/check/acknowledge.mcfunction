
# Lobby Acknowledge

execute if data storage survivalgames:state {next_state:"survivalgames:lobby"} run function survivalgames:state/lobby/acknowledge
