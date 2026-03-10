execute store result score mod rng run data get storage portal:filter transforms
function portal:random/generate
execute if score r rng matches 0 run data modify storage portal:filter transforms set from storage portal:filter transforms[0]
execute if score r rng matches 1 run data modify storage portal:filter transforms set from storage portal:filter transforms[1]
execute if score r rng matches 2 run data modify storage portal:filter transforms set from storage portal:filter transforms[2]
execute if score r rng matches 3 run data modify storage portal:filter transforms set from storage portal:filter transforms[3]