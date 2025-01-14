scoreboard players set mod rng 2
function portal:random/generate
execute if score r rng matches 1.. run data merge block 0 15 29 {mirror:"FRONT_BACK",posX:10}