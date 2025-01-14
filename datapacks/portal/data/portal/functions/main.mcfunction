execute if score in_lobby vars matches 0 unless score current_level vars matches 10 run function portal:timer/timer

# check if player is inside portal
scoreboard players set in_portal vars 0
execute as @a at @s if block ~ ~ ~-0.3 nether_portal run scoreboard players set in_portal vars 1
execute as @a at @s if block ~ ~ ~0.3 nether_portal run scoreboard players set in_portal vars 1
execute as @a at @s if block ~-0.3 ~ ~ nether_portal run scoreboard players set in_portal vars 1
execute as @a at @s if block ~0.3 ~ ~ nether_portal run scoreboard players set in_portal vars 1

execute if score in_portal vars matches 1 unless score current_level vars matches 10 run function portal:finish

# check for early portal break
execute in overworld as @a[distance=0..] if score in_portal vars matches 0 if score in_portal_time vars matches 10..80 run function portal:portalbreak/failed_early

execute if score in_portal vars matches 1 run scoreboard players add in_portal_time vars 1
execute if score in_portal vars matches 0 run scoreboard players reset in_portal_time vars

execute in minecraft:the_end as @a[distance=0..] in minecraft:overworld run function portal:finish

execute if score in_lobby vars matches 1 run scoreboard players set @a reset 0
execute if score in_lobby vars matches 1 run scoreboard players set @a skip 0

# check if reset was triggered
execute as @a[scores={reset=1..}] run function portal:reset
execute as @a[scores={death=1..}] run function portal:reset

# check if skip was triggered
execute as @a[scores={skip=1..}] run function portal:skip

execute if score in_lobby vars matches 1 run function portal:gui/gui

# apply fire resistance if tag is set
execute if score in_lobby vars matches 0 if data storage portal:levels levels[{selected:1b}].fireResistance run effect give @a minecraft:fire_resistance 60 0 false
execute if score nightvision settings matches 1 run effect give @a minecraft:night_vision 60 0 true  

execute in minecraft:the_nether as @a[distance=0..] run function portal:portalbreak/nether