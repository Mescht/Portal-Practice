scoreboard players operation index gui = current_structure vars

# copy structures to filter if a level is selected
data modify storage portal:filter input set from storage portal:levels levels[{selected:1b}].structures

# clear output array
data modify storage portal:filter output set value []

#scoreboard players operation i filter = index gui
scoreboard players set i filter -1

function portal:gui/level_settings/disable_rec

# copy output back to origin
data modify storage portal:levels levels[{selected:1b}].structures set from storage portal:filter output

tellraw @a {"text":"Structure Disabled","color":"red"}