execute if score in_lobby vars matches 0 run function portal:timer/timer

# check if player is inside portal
execute if score active timer matches 1 as @a at @s if block ~ ~ ~-0.3 nether_portal run function portal:finish
execute if score active timer matches 1 as @a at @s if block ~ ~ ~0.3 nether_portal run function portal:finish
execute if score active timer matches 1 as @a at @s if block ~-0.3 ~ ~ nether_portal run function portal:finish
execute if score active timer matches 1 as @a at @s if block ~0.3 ~ ~ nether_portal run function portal:finish

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
