# increment i
scoreboard players add i filter 1

# check if disabled is set
execute store result score disabled filter run data get storage portal:filter input[0].disabled

# toggle disabled if i matches gui index
execute if score i filter = index gui if score disabled filter matches 0 run data modify storage portal:filter input[0].disabled set value 1b
execute if score i filter = index gui if score disabled filter matches 1 run data modify storage portal:filter input[0].disabled set value 0b

# copy element from input to output
data modify storage portal:filter output append from storage portal:filter input[0]

# drop element from input
data remove storage portal:filter input[0]

# repeat if input not empty
execute if data storage portal:filter input[0] run function portal:gui/level_settings/disable_rec