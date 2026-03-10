data modify storage portal:filter transforms set from storage portal:levels transforms
execute store result score transforms vars run data get storage portal:filter output[{selected:1b}].transforms

# rotations
function portal:transform/get_next_bit
execute if score bit vars matches 0 run data remove storage portal:filter transforms[-4]
function portal:transform/get_next_bit
execute if score bit vars matches 0 run data remove storage portal:filter transforms[-3]
function portal:transform/get_next_bit
execute if score bit vars matches 0 run data remove storage portal:filter transforms[-2]
function portal:transform/get_next_bit
execute if score bit vars matches 0 run data remove storage portal:filter transforms[-1]

# mirrors
function portal:transform/get_next_bit
execute if score bit vars matches 0 run data remove storage portal:filter transforms[][-3]
function portal:transform/get_next_bit
execute if score bit vars matches 0 run data remove storage portal:filter transforms[][-2]
function portal:transform/get_next_bit
execute if score bit vars matches 0 run data remove storage portal:filter transforms[][-1]

# select random rotation
function portal:transform/select_random_element
# select random mirror
function portal:transform/select_random_element

tellraw @a[tag=debug] [{"nbt":"transforms.rotation","storage":"portal:filter","color":"dark_purple"},{"text":" "},{"nbt":"transforms.mirror","storage":"portal:filter","color":"dark_purple"}]

data modify block 0 15 29 {} merge from storage portal:filter transforms