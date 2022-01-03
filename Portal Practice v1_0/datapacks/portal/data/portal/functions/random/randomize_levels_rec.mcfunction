# add to itteration counter
scoreboard players add i filter 1

# check if disabled flag is set
execute store result score disabled filter run data get storage portal:filter input[0].disabled

# add to counter if disabled is not set
execute if score disabled filter matches 0 run scoreboard players add count filter 1

# set current_level if counter matches desired index
execute if score count filter = r rng run scoreboard players operation current_level vars = i filter

# drop first element from array
data remove storage portal:filter input[0]

# repeat if index didn't match
execute unless score count filter = r rng run function portal:random/randomize_levels_rec