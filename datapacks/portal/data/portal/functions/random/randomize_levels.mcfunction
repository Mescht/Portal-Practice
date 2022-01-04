# get number of enabled levels
execute store result score mod rng run execute if data storage portal:levels levels[{disabled:0b}]

# generate random number
function portal:random/generate

# initialize variables
scoreboard players set i filter -1
scoreboard players set count filter -1

# copy levels to filter
data modify storage portal:filter input set from storage portal:levels levels

function portal:random/randomize_levels_rec
