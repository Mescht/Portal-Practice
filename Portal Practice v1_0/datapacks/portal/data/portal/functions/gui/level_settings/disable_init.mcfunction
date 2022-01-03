# copy structures to filter if a level is selected
execute if score random_levels vars matches 0 run data modify storage portal:filter input set from storage portal:levels levels[{selected:1b}].structures
# copy levels to filter if random levels is selected
execute if score random_levels vars matches 1 run data modify storage portal:filter input set from storage portal:levels levels

# clear output array
data modify storage portal:filter output set value []

#scoreboard players operation i filter = index gui
scoreboard players set i filter -1

function portal:gui/level_settings/disable_rec

# copy output back to origin
execute if score random_levels vars matches 0 run data modify storage portal:levels levels[{selected:1b}].structures set from storage portal:filter output
execute if score random_levels vars matches 1 run data modify storage portal:levels levels set from storage portal:filter output