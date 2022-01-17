execute store result score disabled filter run data get storage portal:levels levels[{selected:1b}].magma

execute if score disabled filter matches 0 run data modify storage portal:levels levels[{selected:1b}].magma set value 1b
execute if score disabled filter matches 1 run data remove storage portal:levels levels[{selected:1b}].magma