# copy levels data to input
data modify storage portal:filter input set from storage portal:levels levels

# clear output
data modify storage portal:filter output set value []
scoreboard players set i filter -1

# clear selected tag from all inputs
data remove storage portal:filter input[].selected

function portal:filter/select_level_rec

# copy output to levels
data modify storage portal:levels levels set from storage portal:filter output

# reset vars
scoreboard players reset i filter
data remove storage portal:filter input