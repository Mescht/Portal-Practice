# randomize level if random is enabeled
execute if score random_levels vars matches 1 run function portal:random/randomize_levels

# add selected tag to level
function portal:filter/select_level_init

# randomize structures
execute if score random_structures vars matches 1 run function portal:random/randomize_structures

# copy selected structure to sturcture block
function portal:filter/select_structure_init

# mirror ruined portal
data merge block 0 15 29 {mirror:"NONE",posX:-10}

execute if data storage portal:filter output[{selected:1b}].mirror run function portal:random/mirror_structure