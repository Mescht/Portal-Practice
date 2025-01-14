scoreboard players reset @p reset
scoreboard players set in_lobby vars 0

spawnpoint @a 0 16 32

kill @e[type=egg]
tp @e[type=chicken] 0 -200 0
kill @p

scoreboard players reset @p death

# clear level
fill 10 0 30 -10 32 50 air
execute positioned 0.5 16 40.5 run kill @e[type=!player,distance=..15]

# set structure block to load mode
data modify block 0 15 29 mode set value "LOAD"

# load level
setblock 0 14 29 minecraft:redstone_block
setblock 0 14 29 minecraft:barrier

# randomize crying obsidian if enabled
execute if data storage portal:levels levels[{selected:1b}].crying run function portal:random/crying_obsidian
execute if data storage portal:levels levels[{selected:1b}].magma run function portal:random/magma_block

# janky fix cause water spreads to waterloggable blocks in pre 1.16.3 when structure loads
fill 10 0 30 -10 32 50 water replace blue_stained_glass

kill @e[type=item]
gamemode survival @p

execute if score current_level vars matches 10 run schedule function portal:portalbreak/tp 2t

# load inventory
execute as @p run function portal:inventory/loadinv

scoreboard players set timer timer 0
scoreboard players set active timer 0

execute store result score pb timer run data get storage portal:levels levels[{selected:1b}].structures[{selected:1b}].pb
execute unless data storage portal:levels levels[{selected:1b}].structures[{selected:1b}].pb run scoreboard players set pb timer 1728999