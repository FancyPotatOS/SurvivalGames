
# Survival Games Design Doc

## Features

### Player Data

#### Storage `survivalgames:playerdata {“<UUID>”:*}`

Load player’s data to `survivalgames:playerdata current` when player runs `survivalgames:playerdata/load`

Save back into storage with `survivalgames:playerdata/save`

#### Scoreboard `survivalgames.uuid dummy`

The player’s first integer of their UUID. Used to uniquely identify each player, if a hard reference is needed.

#### Scoreboard `survivalgames:id dummy`

Constant `$next_id survivalgames.id`

A unique number for each player. Players that join will be given an id if they don’t have one.

### Teams

#### Config
`$config.max_team` - Max members for a team

`$config.min_team` - Minimum members for a team

Scoreboard `survivalgames.team.id dummy`
\
Scoreboard `survivalgames.team.invite.join.trigger dummy`

Constant `$next_team survivalgames.team.id`

Storage `survivalgames:team {invitations:{<player_id>:{<team_id>:boolean}}}`

Saves all invitations a player receives. Keeping the invitations under its own component allows it to be reset with a single command.

Can leave a team if you are not the only member. This assigns you a completely new team IS

### Control Loop

The control loop are state machines (controllers) that the game will run. It should be almost entirely through an API to allow any datapack or configuration to change its behaviour.

Any child controller will check if the current state configuration is set to this its respective value

Storage `survivalgames:state {current_state:<state>,fallback_state:<other_state>}`

Scoreboard `survivalgames.state`

This is a map of some state data. It is removed and recreated whenever transitioning between states.

#### API

Assuming your state is called `<state>`.

To transition to another state, assign the appropriate storage values `survivalgames:state next_state` and `survivalgames:state fallback_state` then run the function `survivalgames:state/transition`

- API calls with a hashtag ***#*** should only be run when the storage `survivalgames:state next_state` is this state's ID
- API calls with an asterick ***\**** should only be run when the scoreboard `survivalgames.state <state>.current` is 1

**`#survivalgames:state/acknowledge` #**

Sets an appropriate acknowledgement code in scoreboard `acknowledgement_code `. Use this to check the state requirements (player count, map chosen, configuration, etc.) If acknowledged, now is the time to set the score `survivalgames.state <state>.current` to 1.

It's important to note that if a state fails to transition to another state and this is the fallback state, an acknowledgement is not asked of this state.

Acknowledgement Codes:
- 0 - Unacknowledged
    - Default code before API call.
    - This will send the state to its fallback state with an error message naming the failed target state.
- 1 - Acknowledged
    - State is valid and accepted
- 2 - Failed
    - Failed to load state
    - This could be due to a lack of players, or any other reason. It's recommended to display a reason.
    - If set, will quietly send the state to its fallback state.

**`#survivalgames:state/prestart` \***

Run before the state is set up.

**`#survivalgames:state/start` \***

Set up this state. This should include pertinent logic like clearing inventories, teleporting players, setting scoreboard values, resetting maps, etc.

**`#survivalgames:state/stop` \***

Tear down this state. This should clear everything of the state's data, tags, entities, etc.

**`#survivalgames:state/clear`**

Clear this player of all data relating to this state. Can be run during any other state generally, especially just after logging in and just before the `#survivalgames:state/prestart` call.

**`#survivalgames:state/tick` \***

Runs every tick

**`#survivalgames:state/on_login` \***

Run by this player who was just logged in.

This is run before the tick function

**`#survivalgames:state/on_death_no_source` \***

Run when this player dies without a source entity. This always runs before the on_hurt event.

**`#survivalgames:state/on_death` \***

Run when this player dies. This always runs before the on_kill event.

The attacker is tagged with the tag `survivalgames.state.attacker`
\
The target (this entity) is tagged with the tag `survivalgames.state.target`

**`#survivalgames:state/on_kill` \***

Run when this player kills something. This always runs before the on_hurt event.

The attacker (this entity) is tagged with the tag `survivalgames.state.attacker`
\
The target cannot be tagged unfortunately

**`#survivalgames:state/on_hurt_no_source` \***

Run when this player is hurt without a source. This always runs before the on_attack event.

The score `$health_delta survivalgames.player.old_health` denotes how much health was lost.

**`#survivalgames:state/on_hurt` \***

Run when this player is hurt by another entity. This always runs before the on_attack event.

The attacker is tagged with the tag `survivalgames.state.attacker`
\
The target (this entity) is tagged with the tag `survivalgames.state.target`

The score `$health_delta survivalgames.player.old_health` denotes how much health was lost.

**`#survivalgames:state/on_attack` \***

Run when this player attacks something. This always runs after the on_hurt event.

The attacker (this entity) is tagged with the tag `survivalgames.state.attacker`
\
If the target is alive, it is tagged with the tag `survivalgames.state.target`

## Other Features

Spawn points

Grace Period

Chest Loot

Safe Zone

Player Compass

Maps/Voting

Map Clearing

The Feast/Supply Drops

Ending Arena

Anti-Stalling Mechanics

Graves

Player Statistics

Bounties

Kill Rewards

Traps/Hazards
