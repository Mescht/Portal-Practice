# increment i
scoreboard players add i filter 1

# copy first element from input to output
data modify storage portal:filter output append from storage portal:filter input[0]

# set structure block name if i matches current_structure
execute if score current_structure vars = i filter run data modify block 0 32 29 name set from storage portal:filter input[0].name

# add selected tag if i matches current_level
execute if score current_structure vars = i filter run data modify storage portal:filter output[-1] merge value {selected:1b}

# drop first element from input
data remove storage portal:filter input[0]

# repeat if input not empty
execute if data storage portal:filter input[0] run function portal:filter/select_structure_rec