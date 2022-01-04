# get number of enabled levels
execute store result score mod rng run execute if data storage portal:levels levels[{selected:1b}].structures[{disabled:0b}]

# generate random number
function portal:random/generate

# initialize variables
scoreboard players set i filter -1
scoreboard players set count filter -1

# copy structures to filter
data modify storage portal:filter input set from storage portal:levels levels[{selected:1b}].structures

function portal:random/randomize_structures_rec
